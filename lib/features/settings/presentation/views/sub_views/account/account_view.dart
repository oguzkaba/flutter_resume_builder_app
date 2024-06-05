import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/enums/routes_enum.dart';
import 'package:fixresume/core/extensions/color_extension.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/extensions/string_extensions.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/core/init/lang/locale_keys.g.dart';
import 'package:fixresume/core/utils/general_util.dart';
import 'package:fixresume/core/widgets/custom_coloredbox_column_widget.dart';
import 'package:fixresume/core/widgets/custom_dialog_appbar_widget.dart';
import 'package:fixresume/core/widgets/custom_dialog_widget.dart';
import 'package:fixresume/core/widgets/custom_outlined_button_widget.dart';
import 'package:fixresume/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

/// AccountView class is a StatelessWidget.
class AccountView extends StatelessWidget {
  /// constructor for the `AccountView` class.
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (value) {
        context.goNamed(RoutesEnum.settings.name);
      },
      child: Scaffold(
        appBar: CustomDialogAppBarWidget(
          title: LocaleKeys.settings_account_name.locale,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              _profileSection(context),
              const Spacer(),
              _logoutButton(context),
              context.verticalPaddingSmall,
            ],
          ),
        ),
      ),
    );
  }

  CustomColoredBoxColumnWidget _profileSection(BuildContext context) {
    return CustomColoredBoxColumnWidget(
      labelText: 'Profile',
      children: [
        getIt<AuthBloc>().state.maybeWhen(
              success: (user) {
                return GestureDetector(
                  onTap: () => context.goNamed(RoutesEnum.settings.name),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 48,
                        backgroundImage: GeneralUtil.profileImage(user),
                      ),
                      context.horizontalPaddingSmall,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.fullName ?? 'No Name',
                            style: context.size16Bold,
                          ),
                          Text(
                            user.currentUser.email!,
                            style: context.size14BoldWithColor(
                              ColorConstants.myMediumGrey,
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              text: 'Connected with ',
                              style: context.defaultSizeBoldWithColor(
                                ColorConstants.myMediumGrey,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: (user.currentUser
                                          .appMetadata['provider'] as String?)
                                      ?.capitalize,
                                  style: context.defaultSizeBoldWithColor(
                                    _providerColor(
                                      user.currentUser.appMetadata['provider']
                                          as String,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            user.accType.capitalize,
                            style: context.size14BoldWithColor(
                              GeneralUtil.badgeColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              orElse: () => const SizedBox.shrink(),
            ),
      ],
    );
  }

  CustomOutlinedIconButtonWidget _logoutButton(BuildContext context) {
    return CustomOutlinedIconButtonWidget(
      labelText: 'Logout',
      fontSize: 14,
      icon: FontAwesomeIcons.rightFromBracket,
      color: ColorConstants.myDarkRed,
      iconSize: 18,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      fixedSize: Size(context.width, 42),
      onPressed: () => CustomDialogWidget.showCustomDialog(
        context: context,
        onConfirm: () {
          getIt<AuthBloc>().add(const AuthEvent.logout());
          context.goNamed(RoutesEnum.login.name);
        },
      ),
    );
  }

  Color _providerColor(String? providerName) {
    switch (providerName) {
      case 'email':
        return ColorConstants.primaryColor;
      case 'google':
        return 'B23121'.toColor;
      case 'apple':
        return ColorConstants.myBlack;
      case 'github':
        return '24292E'.toColor;
      case 'linkedin':
        return '0077B5'.toColor;
      default:
        return ColorConstants.myBlack;
    }
  }
}
