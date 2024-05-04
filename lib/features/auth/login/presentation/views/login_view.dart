// ignore_for_file: public_member_api_docs

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';
import 'package:flutter_resume_builder_app/core/enums/routes_enum.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/string_extensions.dart';
import 'package:flutter_resume_builder_app/core/init/lang/locale_keys.g.dart';
import 'package:flutter_resume_builder_app/core/widgets/custom_filledbutton_widget.dart';
import 'package:flutter_resume_builder_app/core/widgets/custom_textfield_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

/// This class is likely used for routing within a Dart application.
class LoginView extends StatefulWidget {
  /// with the `key` parameter passed to the `LoginView` constructor.
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

final formKey = GlobalKey<FormState>();
final tfEmailController = TextEditingController();
final tfPasswordController = TextEditingController();

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    // final _keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
            child: Column(
              children: [
                Column(
                  children: [
                    Text.rich(
                      overflow: TextOverflow.ellipsis,
                      TextSpan(
                        text: 'Welcome Back 👋',
                        style: context.size18Bold,
                        children: <TextSpan>[
                          TextSpan(
                            text: '\nplease login or register to continue.',
                            style: context.size14BoldWithColor(
                              ColorConstants.myMediumGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    context.verticalPaddingNormal,
                  ],
                ),
                Text.rich(
                  TextSpan(
                    text: 'Fix',
                    style: context
                        .size28BoldWithColor(ColorConstants.primaryColor),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Resume',
                        style:
                            context.size28BoldWithColor(ColorConstants.myBlack),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Build a Professional Resume for Free!',
                  textAlign: TextAlign.center,
                  style:
                      context.size16BoldWithColor(ColorConstants.myMediumGrey),
                ),
                context.verticalPaddingSmall,
                Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      CustomTextFieldWidget(
                        hintText: 'Email',
                        fillColor: ColorConstants.myExtraLightGrey,
                        prefixIconData: FontAwesomeIcons.solidEnvelope,
                        controller: tfEmailController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        border: context.inputOutlineNoBorder,
                        focusedBorder: context.inputOutlineFocusedBorder,
                        errorBorder: context.inputOutlineErrorBorder,
                        onChanged: (value) {},
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!context.isEmail(value)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                      ),
                      context.verticalPaddingSmall,
                      CustomTextFieldWidget(
                        hintText: 'Password',
                        fillColor: ColorConstants.myExtraLightGrey,
                        prefixIconData: FontAwesomeIcons.lock,
                        suffixIconData: FontAwesomeIcons.eyeLowVision,
                        obsecureText: true,
                        controller: tfPasswordController,
                        textInputAction: TextInputAction.done,
                        border: context.inputOutlineNoBorder,
                        focusedBorder: context.inputOutlineFocusedBorder,
                        errorBorder: context.inputOutlineErrorBorder,
                        onChanged: (value) {},
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
                          return null;
                        },
                      ),
                      context.verticalPaddingNormal,
                      CustomFilledButtonWidget(
                        buttonText: LocaleKeys.login_buttonText.locale,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            context.goNamed(RoutesEnum.home.name);
                          }
                        },
                      ),
                      context.verticalPaddingSmall,
                      Text.rich(
                        TextSpan(
                          text: "Don't have an account? ",
                          style: context.defaultSizeNormalWithColor(
                            ColorConstants.myMediumGrey,
                          ),
                          children: [
                            TextSpan(
                              text: 'Register',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () =>
                                    context.goNamed(RoutesEnum.register.name),
                              style: context
                                  .defaultSizeBoldWithColor(
                                    ColorConstants.primaryColor,
                                  )
                                  .copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
