// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';
import 'package:flutter_resume_builder_app/core/enums/routes_enum.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';
import 'package:go_router/go_router.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: context.body18BoldBlack,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Text('Profile', style: context.mediumGreyBold),
            _listTileSection(
              context,
              'My Account',
              Icons.person_outline,
              trailingChild: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: context.width * .35),
                child: Text(
                  'oguzkaba@gmail.com',
                  style: context.body12BoldMediumGrey,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            _listTileSection(
              context,
              'Go Premium',
              onTap: () => context.goNamed(RoutesEnum.premium.name),
              Icons.workspace_premium_rounded,
              trailingChild: Chip(
                padding: const EdgeInsets.all(2),
                label: Text(
                  'Free',
                  style: context.whiteBold,
                ),
                color: ColorConstants.myYellowMaterialState,
                shape: const StadiumBorder(),
                side: BorderSide.none,
              ),
            ),
            _listTileSection(
              context,
              'Language',
              Icons.translate_rounded,
              trailingChild:
                  Text('English', style: context.body12BoldMediumGrey),
            ),
            Divider(
              color: ColorConstants.myLightGrey,
              thickness: 1,
              indent: 4,
              endIndent: 4,
              height: 32,
            ),
            Text('Terms & Privacy', style: context.mediumGreyBold),
            _listTileSection(
              context,
              'Terms of Use',
              Icons.policy_outlined,
            ),
            _listTileSection(
              context,
              'Terms of Privacy',
              Icons.privacy_tip_outlined,
            ),
            Divider(
              color: ColorConstants.myLightGrey,
              thickness: 1,
              indent: 4,
              endIndent: 4,
              height: 32,
            ),
            Text('Contact', style: context.mediumGreyBold),
            _listTileSection(
              context,
              'Rate Our App',
              Icons.star_outline_rounded,
            ),
            _listTileSection(
              context,
              'Our Website',
              Icons.language_outlined,
            ),
            Center(
              child: Text('App version 1.0.0', style: context.mediumGreyBold),
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
      leading: Icon(icon),
      title: Text(title, style: context.body14BoldBlack),
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
