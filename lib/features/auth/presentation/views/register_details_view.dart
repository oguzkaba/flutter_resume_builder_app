import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/core/mixin/validator_mixin.dart';
import 'package:fixresume/core/widgets/custom_coloredbox_column_widget.dart';
import 'package:fixresume/core/widgets/custom_dialog_appbar_widget.dart';
import 'package:fixresume/core/widgets/custom_filled_textfield_widget.dart';
import 'package:fixresume/core/widgets/custom_filledbutton_widget.dart';
import 'package:fixresume/core/widgets/custom_snackbar_widget.dart';
import 'package:fixresume/features/auth/presentation/blocs/cubits/cubit/register_details_cubit.dart';
import 'package:fixresume/features/auth/presentation/blocs/user_details/user_details_bloc.dart';
import 'package:fixresume/features/auth/presentation/widgets/avatar_widget.dart';
import 'package:fixresume/features/resume/presentation/blocs/personal_info/personal_info_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RegisterDetailsView extends StatefulWidget {
  const RegisterDetailsView({super.key});

  @override
  State<RegisterDetailsView> createState() => _RegisterDetailsViewState();
}

class _RegisterDetailsViewState extends State<RegisterDetailsView>
    with ValidatorMixin {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneCountryCodeController;
  late TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    final userId = getIt<SupabaseClient>().auth.currentUser!.id;
    getIt<UserDetailsBloc>()
        .add(UserDetailsEvent.getUserDetails(userId: userId));
    getIt<PersonalInfoBloc>().add(const PersonalInfoEvent.getPersonalInfo());
    _formKey = GlobalKey<FormState>();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneCountryCodeController = TextEditingController();
    _phoneController = TextEditingController();
    getIt<PersonalInfoBloc>().state.whenOrNull(
      personalInfoSuccess: (personalInfo) {
        _firstNameController.text = personalInfo.name;
        _lastNameController.text = personalInfo.surname;
        _emailController.text = personalInfo.email;
        _phoneCountryCodeController.text = personalInfo.phoneCountryCode;
        _phoneController.text = personalInfo.phone;
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneCountryCodeController.dispose();
    _phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomDialogAppBarWidget(title: 'Register Details'),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _avatarSection(),
                // TO-DO: Eski resim gösteriliyor kontrol et
                context.verticalPaddingSmall,
                _formSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BlocConsumer<PersonalInfoBloc, PersonalInfoState> _formSection() {
    return BlocConsumer<PersonalInfoBloc, PersonalInfoState>(
      listener: (context, state) {
        state.whenOrNull(
          personalInfoFailure: (error) {
            CustomSnackbarWidget.showWarning(
              context,
              'Warning: Personnel information has not been created yet!',
            );
          },
        );
      },
      builder: (context, state) {
        state.whenOrNull(
          // personalInfoSuccess: (personalInfo) {
          //   context.goNamed(RoutesEnum.home.name);
          // },
          personalInfoLoading: () {
            return context.shimmerColoredBox(4);
          },
        );
        return Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              CustomColoredBoxColumnWidget(
                labelText: 'First Name: ',
                children: [
                  CustomFilledTextFieldWidget(
                    key: const Key('firstNameTextField'),
                    hintText: 'First Name',
                    validator: (value) => validateName(context, value),
                    controller: _firstNameController,
                    keyboardType: TextInputType.name,
                    onChanged: (value) {
                      _firstNameController.text = value;
                    },
                  ),
                ],
              ),
              context.verticalPaddingSmall,
              CustomColoredBoxColumnWidget(
                labelText: 'Last Name: ',
                children: [
                  CustomFilledTextFieldWidget(
                    key: const Key('lastNameTextField'),
                    hintText: 'Last Name',
                    validator: (value) => validateName(context, value),
                    controller: _lastNameController,
                    keyboardType: TextInputType.name,
                    onChanged: (value) {
                      _lastNameController.text = value;
                    },
                  ),
                ],
              ),
              context.verticalPaddingSmall,
              CustomColoredBoxColumnWidget(
                labelText: 'Email: ',
                children: [
                  CustomFilledTextFieldWidget(
                    key: const Key('emailTextField'),
                    hintText: 'Email',
                    validator: (value) => validateEmail(context, value),
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      _emailController.text = value;
                    },
                  ),
                ],
              ),
              context.verticalPaddingSmall,
              CustomColoredBoxColumnWidget(
                labelText: 'Phone: ',
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CustomFilledTextFieldWidget(
                          key: const Key('phoneCountryCodeTextField'),
                          hintText: 'Country Code',
                          validator: (value) =>
                              validatePhoneCountryCode(context, value),
                          controller: _phoneCountryCodeController,
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            _phoneCountryCodeController.text = value;
                          },
                        ),
                      ),
                      context.horizontalPaddingMedium,
                      Expanded(
                        flex: 4,
                        child: CustomFilledTextFieldWidget(
                          key: const Key('phoneTextField'),
                          hintText: 'Phone',
                          controller: _phoneController,
                          validator: (value) => validatePhone(context, value),
                          keyboardType: TextInputType.phone,
                          onChanged: (value) {
                            _phoneController.text = value;
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              context.verticalPaddingNormal,
              CustomFilledButtonWidget(
                buttonText: 'Save',
                onPressed: () {
                  //context.goNamed(RoutesEnum.home.name);
                  if (_formKey.currentState!.validate()) {
                    // TO-DO: Save user details
                    getIt<RegisterDetailsCubit>().saveUserDetailsPerInfo(
                      name: _firstNameController.text,
                      surname: _lastNameController.text,
                      email: _emailController.text,
                      phoneCountryCode: _phoneCountryCodeController.text,
                      phone: _phoneController.text,
                    );
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _avatarSection() =>
      BlocConsumer<RegisterDetailsCubit, RegisterDetailsState>(
        listener: (context, state) {
          state.whenOrNull(
            failure: (error) => CustomSnackbarWidget.showError(context, error),
            successMessage: (message) =>
                CustomSnackbarWidget.showSuccess(context, message),
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => context.shimmerAvatar(68),
            orElse: () => const AvatarWidget(radius: 64),
          );
        },
      );
}
