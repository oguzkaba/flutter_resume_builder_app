import 'package:fixresume/core/extensions/color_extension.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/core/widgets/custom_outlined_button_widget.dart';
import 'package:fixresume/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// SocialIconButtonWidget for the application.
class SocialIconButtonWidget extends StatefulWidget {
  /// SocialIconButtonWidget constructor.
  const SocialIconButtonWidget({required this.state, super.key});

  final AuthState state;

  @override
  State<SocialIconButtonWidget> createState() => _SocialIconButtonWidgetState();
}

class _SocialIconButtonWidgetState extends State<SocialIconButtonWidget> {
  @override
  Widget build(BuildContext context) {
    final buttonFixSize = Size(context.width, 42);
    return Column(
      children: [
        CustomOutlinedIconButtonWidget(
          labelText: 'Google',
          loading: widget.state.maybeWhen(
            orElse: () => false,
            loading: () => true,
          ),
          onPressed: () {
            getIt<AuthBloc>().add(const AuthEvent.loginWithGoogle());
          },
          icon: FontAwesomeIcons.google,
          fontSize: 15,
          iconSize: 18,
          fixedSize: buttonFixSize,
          color: 'B23121'.toColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        CustomOutlinedIconButtonWidget(
          labelText: 'Apple',
          loading: widget.state.maybeWhen(
            orElse: () => false,
            loading: () => true,
          ),
          onPressed: () {
            // getIt<AuthBloc>().add(AuthEvent.loginWithApple(context: context));
          },
          icon: FontAwesomeIcons.apple,
          fontSize: 15,
          iconSize: 20,
          fixedSize: buttonFixSize,
          color: '000000'.toColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ],
    );
  }

  // TO:DO: Implement the _todoOAuthMethods method
  // ignore: unused_element
  Wrap _todoOAuthMethods() {
    final buttonFixSize = Size(context.width * .44, 42);
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      spacing: 4,
      runSpacing: 1,
      children: [
        CustomOutlinedIconButtonWidget(
          labelText: 'LinkedIn',
          onPressed: () {},
          icon: FontAwesomeIcons.linkedin,
          fontSize: 14,
          iconSize: 18,
          fixedSize: buttonFixSize,
          color: '0077B5'.toColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        CustomOutlinedIconButtonWidget(
          labelText: 'GitHub',
          onPressed: () {
            getIt<AuthBloc>().add(const AuthEvent.loginWithGithub());
          },
          icon: FontAwesomeIcons.github,
          fontSize: 14,
          iconSize: 22,
          fixedSize: buttonFixSize,
          color: '000000'.toColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        CustomOutlinedIconButtonWidget(
          labelText: 'Google',
          onPressed: () {
            getIt<AuthBloc>().add(const AuthEvent.loginWithGoogle());
          },
          icon: FontAwesomeIcons.google,
          fontSize: 14,
          iconSize: 18,
          fixedSize: buttonFixSize,
          color: 'B23121'.toColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        CustomOutlinedIconButtonWidget(
          labelText: 'Apple',
          onPressed: () {},
          icon: FontAwesomeIcons.apple,
          fontSize: 14,
          iconSize: 18,
          fixedSize: buttonFixSize,
          color: '000000'.toColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ],
    );
  }
}
