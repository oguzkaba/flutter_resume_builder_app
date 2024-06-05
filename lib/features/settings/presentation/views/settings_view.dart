import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/enums/routes_enum.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/extensions/icon_extension.dart';
import 'package:fixresume/core/extensions/string_extensions.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/core/init/lang/locale_keys.g.dart';
import 'package:fixresume/core/utils/general_util.dart';
import 'package:fixresume/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.settings_name.locale.capitalize,
          style: context.defaultSizeBold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return ListView(
              children: [
                Text(
                  LocaleKeys.settings_sections_profile.locale,
                  style: context
                      .defaultSizeBoldWithColor(ColorConstants.myMediumGrey),
                ),
                _listTileSection(
                  context,
                  LocaleKeys.settings_account_name.locale,
                  onTap: () => context.goNamed(RoutesEnum.account.name),
                  FontAwesomeIcons.solidCircleUser,
                  trailingChild: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: context.width * .35),
                    child: Text(
                      state.maybeWhen(
                        success: (user) =>
                            user.currentUser.email ?? 'Not Logged In',
                        orElse: () => 'Not Logged In',
                      ),
                      style: context
                          .size12BoldWithColor(ColorConstants.myMediumGrey),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                _listTileSection(
                  context,
                  LocaleKeys.settings_premium_name.locale,
                  onTap: () => context.goNamed(RoutesEnum.premium.name),
                  FontAwesomeIcons.crown,
                  trailingChild: Chip(
                    padding: const EdgeInsets.all(2),
                    label: Text(
                      state.maybeWhen(
                        success: (user) => user.accType.capitalize,
                        orElse: () => 'Free',
                      ),
                      style: context
                          .defaultSizeBoldWithColor(GeneralUtil.badgeColor),
                    ),
                    color: WidgetStatePropertyAll<Color>(
                      GeneralUtil.badgeColor.withOpacity(.2),
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    side: BorderSide.none,
                  ),
                ),
                _listTileSection(
                  context,
                  LocaleKeys.settings_language_name.locale,
                  onTap: () => context.goNamed(RoutesEnum.languages.name),
                  FontAwesomeIcons.language,
                  trailingChild: Text(
                    context.locale.toString() == 'tr_TR' ? 'Türkçe' : 'English',
                    style: context
                        .size12BoldWithColor(ColorConstants.myMediumGrey),
                  ),
                ),
                Divider(
                  color: ColorConstants.myLightGrey,
                  thickness: 1,
                  indent: 4,
                  endIndent: 4,
                  height: 32,
                ),
                Text(
                  LocaleKeys.settings_sections_termsAndprivacy.locale,
                  style: context
                      .defaultSizeBoldWithColor(ColorConstants.myMediumGrey),
                ),
                _listTileSection(
                  onTap: () => context.goNamed(RoutesEnum.terms.name),
                  context,
                  LocaleKeys.settings_terms_name.locale,
                  FontAwesomeIcons.fileContract,
                ),
                _listTileSection(
                  onTap: () => context.goNamed(RoutesEnum.privacy.name),
                  context,
                  LocaleKeys.settings_privacy_name.locale,
                  FontAwesomeIcons.fileContract,
                ),
                Divider(
                  color: ColorConstants.myLightGrey,
                  thickness: 1,
                  indent: 4,
                  endIndent: 4,
                  height: 32,
                ),
                Text(
                  LocaleKeys.settings_sections_contact.locale,
                  style: context
                      .defaultSizeBoldWithColor(ColorConstants.myMediumGrey),
                ),
                _listTileSection(
                  onTap: () {},
                  context,
                  LocaleKeys.settings_rateOurApp.locale,
                  FontAwesomeIcons.starHalfStroke,
                ),
                _listTileSection(
                  onTap: () => context.goNamed(RoutesEnum.ourWebsite.name),
                  context,
                  LocaleKeys.settings_ourWebsite.locale,
                  FontAwesomeIcons.globe,
                ),
                Divider(
                  color: ColorConstants.myLightGrey,
                  thickness: 1,
                  indent: 4,
                  endIndent: 4,
                  height: 32,
                ),
                Text(
                  LocaleKeys.settings_sections_appInfo.locale,
                  style: context
                      .defaultSizeBoldWithColor(ColorConstants.myMediumGrey),
                ),
                _listTileSection(
                  context,
                  LocaleKeys.settings_appVersion.localeNamedArgs(
                    {
                      'version': getIt<PackageInfo>().version,
                      'platform': Platform.operatingSystem.capitalize,
                    },
                  ),
                  FontAwesomeIcons.mobileButton,
                ),
                _listTileSection(
                  context,
                  LocaleKeys.settings_developBy.localeNamedArgs(
                    {'author': 'oguzkaba'},
                  ),
                  FontAwesomeIcons.dev,
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  ListTile _listTileSection(
    BuildContext context,
    String title,
    IconData icon, {
    Widget? trailingChild,
    VoidCallback? onTap,
  }) {
    return ListTile(
      onTap: onTap,
      iconColor: ColorConstants.primaryColor,
      leading: icon.toFaIconPrimaryColorSized(22),
      title: Text(title, style: context.size14Bold),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          trailingChild ?? const SizedBox.shrink(),
          context.horizontalPaddingSmall,
          if (onTap != null)
            const Icon(Icons.chevron_right_rounded)
          else
            const SizedBox.shrink(),
        ],
      ),
    );
  }
}
