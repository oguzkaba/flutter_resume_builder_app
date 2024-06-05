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
import 'package:fixresume/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:fixresume/features/auth/presentation/widgets/social_button_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

/// This class is likely used for routing within a Dart application.
class RegisterView extends StatefulWidget {
  /// with the `key` parameter passed to the `RegisterView` constructor.
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> with ValidatorMixin {
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
                    CustomSnackbarWidget.show(
                      context,
                      message,
                      icon: FontAwesomeIcons.circleExclamation,
                    );
                  },
                  success: (user) {
                    context.goNamed(RoutesEnum.home.name);
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
                    const SocialIconButtonWidget(),
                    context.verticalPaddingSmall,
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
        LocaleKeys.login_orLoginWith.locale,
        style: context.defaultSizeNormalWithColor(ColorConstants.myMediumGrey),
      ),
    );
  }

  Text _signupLinkSection(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.register_haveAccount.locale,
        style: context.defaultSizeNormalWithColor(ColorConstants.myMediumGrey),
        children: [
          TextSpan(
            text: LocaleKeys.register_login.locale,
            recognizer: TapGestureRecognizer()
              ..onTap = () => context.goNamed(RoutesEnum.login.name),
            style: context
                .defaultSizeBoldWithColor(ColorConstants.primaryColor)
                .copyWith(decoration: TextDecoration.underline),
          ),
        ],
      ),
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
                LocaleKeys.register_topMessage.locale,
                textAlign: TextAlign.center,
                style: context.size28Bold,
              ),
              context.verticalPaddingSmall,
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
          LocaleKeys.general_appDesc.locale,
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
            hintText: LocaleKeys.register_tfieldEmailHint.locale,
            fillColor: ColorConstants.myExtraLightGrey,
            prefixIconData: FontAwesomeIcons.solidEnvelope,
            controller: tfEmailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            border: context.inputOutlineBorder,
            focusedBorder: context.inputOutlineFocusedBorder,
            errorBorder: context.inputOutlineErrorBorder,
            onChanged: (value) {},
            validator: (value) => validateEmail(context, value),
            formatter: [
              FilteringTextInputFormatter.deny(RegExp(r'\s')),
            ],
          ),
          context.verticalPaddingSmall,
          CustomTextFieldWidget(
            hintText: LocaleKeys.register_tfieldPassHint.locale,
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
            buttonText: LocaleKeys.register_buttonText.locale,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                getIt<AuthBloc>().add(
                  AuthEvent.register(
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
