import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/enums/routes_enum.dart';
import 'package:fixresume/core/extensions/asset_extension.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/extensions/string_extensions.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/core/init/lang/locale_keys.g.dart';
import 'package:fixresume/core/mixin/validator_mixin.dart';
import 'package:fixresume/core/widgets/custom_filledbutton_widget.dart';
import 'package:fixresume/core/widgets/custom_snackbar_widget.dart';
import 'package:fixresume/core/widgets/custom_textfield_widget.dart';
import 'package:fixresume/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:fixresume/features/auth/presentation/widgets/auth_link_widget.dart';
import 'package:fixresume/features/auth/presentation/widgets/social_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> with ValidatorMixin {
  final formKey = GlobalKey<FormState>();
  final tfEmailController = TextEditingController();
  final tfPasswordController = TextEditingController();

  @override
  void dispose() {
    tfEmailController.dispose();
    tfPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final keyboardOpen = MediaQuery.of(context).viewInsets.bottom == 0;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  failure: (message) {
                    CustomSnackbarWidget.showError(
                      context,
                      message,
                    );
                  },
                  success: (userDetails) {
                    if (userDetails.photoUrl == null ||
                        userDetails.fullName == null) {
                      context.goNamed(RoutesEnum.registerDetails.name);
                    } else {
                      context.goNamed(RoutesEnum.home.name);
                    }
                  },
                );
              },
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _brandSection(context, keyboardOpen: keyboardOpen),
                    context.verticalPaddingSmall,
                    _formSection(context, state),
                    context.verticalPaddingSmall,
                    _orDivider(context),
                    context.verticalPaddingSmall,
                    SocialIconButtonWidget(state: state),
                    _signupLinkSection(context),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Center _orDivider(BuildContext context) {
    return Center(
      child: Text(
        LocaleKeys.login_orLoginWith.locale(context),
        style: context.defaultSizeNormalWithColor(ColorConstants.myMediumGrey),
      ),
    );
  }

  Widget _signupLinkSection(BuildContext context) {
    return AuthLinkWidget(
      textQuestion: LocaleKeys.login_haveAccount.locale(context),
      textAction: LocaleKeys.login_register.locale(context),
      onTap: () {
        context.goNamed(RoutesEnum.register.name);
      },
    );
  }

  Column _brandSection(BuildContext context, {required bool keyboardOpen}) {
    return Column(
      children: [
        Visibility(
          visible: keyboardOpen,
          child: Column(
            children: [
              Text(
                LocaleKeys.login_topMessage.locale(context),
                style: context.size28Bold,
              ),
              context.verticalPaddingNormal,
            ],
          ),
        ),
        Image.asset('app-icon-50'.toAppIcon),
        Text.rich(
          TextSpan(
            text: 'Fix',
            style: context.size28BoldWithColor(ColorConstants.primaryColor),
            children: <TextSpan>[
              TextSpan(
                text: 'Resume',
                style: context.size28BoldWithColor(ColorConstants.myBlack),
              ),
            ],
          ),
        ),
        Text(
          LocaleKeys.general_appDesc.locale(context),
          textAlign: TextAlign.center,
          style: context.size14BoldWithColor(ColorConstants.myMediumGrey),
        ),
      ],
    );
  }

  Form _formSection(BuildContext context, AuthState state) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          CustomTextFieldWidget(
            hintText: LocaleKeys.login_tfieldEmailHint.locale(context),
            fillColor: ColorConstants.myExtraLightGrey,
            prefixIconData: FontAwesomeIcons.solidEnvelope,
            suffixIconData: tfEmailController.text.isNotEmpty
                ? FontAwesomeIcons.solidCircleXmark
                : null,
            onPressed: tfEmailController.clear,
            controller: tfEmailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            border: context.inputOutlineBorder,
            focusedBorder: context.inputOutlineFocusedBorder,
            errorBorder: context.inputOutlineErrorBorder,
            onChanged: (value) {
              setState(() {});
            },
            validator: (value) => validateEmail(context, value),
            formatter: [
              FilteringTextInputFormatter.deny(RegExp(r'\s')),
            ],
          ),
          context.verticalPaddingSmall,
          CustomTextFieldWidget(
            hintText: LocaleKeys.login_tfieldPassHint.locale(context),
            fillColor: ColorConstants.myExtraLightGrey,
            prefixIconData: FontAwesomeIcons.lock,
            suffixIconData: FontAwesomeIcons.eyeLowVision,
            obsecureText: true,
            controller: tfPasswordController,
            textInputAction: TextInputAction.done,
            border: context.inputOutlineBorder,
            focusedBorder: context.inputOutlineFocusedBorder,
            errorBorder: context.inputOutlineErrorBorder,
            onChanged: (value) {},
            validator: (value) => validatePassword(context, value),
            formatter: [
              FilteringTextInputFormatter.deny(RegExp(r'\s')),
            ],
          ),
          context.verticalPaddingSmall,
          CustomFilledButtonWidget(
            loading: state.maybeWhen(
              orElse: () => false,
              loading: () => true,
            ),
            buttonText: LocaleKeys.login_buttonText.locale(context),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                getIt<AuthBloc>().add(
                  AuthEvent.loginWithEmail(
                    email: tfEmailController.text.trim(),
                    password: tfPasswordController.text.trim(),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
