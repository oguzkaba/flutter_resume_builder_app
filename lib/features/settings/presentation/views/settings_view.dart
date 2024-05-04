// ignore_for_file: public_member_api_docs

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';
import 'package:flutter_resume_builder_app/core/enums/routes_enum.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/icon_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/string_extensions.dart';
import 'package:flutter_resume_builder_app/core/init/di/dependency_injection.dart';
import 'package:flutter_resume_builder_app/core/init/lang/locale_keys.g.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.settings_name.locale.capitalize,
          style: context.size18Bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Text(
              'Profile',
              style:
                  context.defaultSizeBoldWithColor(ColorConstants.myMediumGrey),
            ),
            _listTileSection(
              context,
              'My Account',
              FontAwesomeIcons.solidCircleUser,
              trailingChild: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: context.width * .35),
                child: Text(
                  'oguzkaba@gmail.com',
                  style:
                      context.size12BoldWithColor(ColorConstants.myMediumGrey),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            _listTileSection(
              context,
              'Go Premium',
              onTap: () => context.goNamed(RoutesEnum.premium.name),
              FontAwesomeIcons.crown,
              trailingChild: Chip(
                padding: const EdgeInsets.all(2),
                label: Text(
                  'Free',
                  style:
                      context.defaultSizeBoldWithColor(ColorConstants.myWhite),
                ),
                color: ColorConstants.myYellowMaterialState,
                shape: const StadiumBorder(),
                side: BorderSide.none,
              ),
            ),
            _listTileSection(
              context,
              'Language',
              onTap: () =>
                  Di.languageCubit.toogleLanguage(context, context.locale),
              FontAwesomeIcons.language,
              trailingChild: Text(
                context.locale.toString() == 'tr_TR' ? 'Türkçe' : 'English',
                style: context.size12BoldWithColor(ColorConstants.myMediumGrey),
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
              'Terms & Privacy',
              style:
                  context.defaultSizeBoldWithColor(ColorConstants.myMediumGrey),
            ),
            _listTileSection(
              onTap: () => context.goNamed(RoutesEnum.terms.name),
              context,
              'Terms of Conditions',
              FontAwesomeIcons.fileContract,
            ),
            _listTileSection(
              onTap: () => context.goNamed(RoutesEnum.privacy.name),
              context,
              'Privacy Policy',
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
              'Contact',
              style:
                  context.defaultSizeBoldWithColor(ColorConstants.myMediumGrey),
            ),
            _listTileSection(
              context,
              'Rate Our App',
              FontAwesomeIcons.starHalfStroke,
            ),
            _listTileSection(
              context,
              'Our Website',
              FontAwesomeIcons.globe,
            ),
            Center(
              child: Text(
                'App version 1.0.0',
                style: context
                    .defaultSizeBoldWithColor(ColorConstants.myMediumGrey),
              ),
            ),
          ],
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
          const Icon(Icons.chevron_right_rounded),
        ],
      ),
    );
  }
}
