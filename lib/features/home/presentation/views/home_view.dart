import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';
import 'package:flutter_resume_builder_app/core/enums/routes_enum.dart';
import 'package:flutter_resume_builder_app/core/extensions/asset_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/icon_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/string_extensions.dart';
import 'package:flutter_resume_builder_app/core/init/lang/locale_keys.g.dart';
import 'package:flutter_resume_builder_app/core/widgets/custom_bottomsheet_widget.dart';
import 'package:flutter_resume_builder_app/core/widgets/custom_icon_button_widget.dart';
import 'package:flutter_resume_builder_app/core/widgets/custom_outlined_button_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

/// This Dart class named HomeView extends StatefulWidget.
class HomeView extends StatelessWidget {
  ///constructor
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _bodySection(context),
      floatingActionButton: _floatingActionButton(context),
    );
  }

  SingleChildScrollView _bodySection(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              _tipContainerSection(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('My Resume', style: context.size16Bold),
                  Text(
                    'See all',
                    style: context.size14BoldWithColor(
                      ColorConstants.primaryColor,
                    ),
                  ),
                ],
              ),
              context.verticalPaddingSmall,
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorConstants.myLightGrey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _myResumeThumb(),
                    const Divider(
                      indent: 32,
                      endIndent: 32,
                    ),
                    _resumeActionButtons(context),
                    context.verticalPaddingSmall,
                  ],
                ),
              ),
              context.verticalPaddingLarge,
            ],
          ),
        ),
      ),
    );
  }

  Stack _myResumeThumb() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Image.asset(
            'resume/sample_resume6'.toPNG,
            fit: BoxFit.scaleDown,
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: IconButton.filledTonal(
            constraints: BoxConstraints.tight(const Size(32, 32)),
            onPressed: () {},
            icon: FontAwesomeIcons.ellipsis.toFaIconDefColorSized(16),
          ),
        ),
      ],
    );
  }

  Row _resumeActionButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomOutlinedIconButtonWidget(
          labelText: 'View',
          icon: FontAwesomeIcons.solidEye,
          onPressed: () => context.goNamed(RoutesEnum.previewResume.name),
        ),
        CustomOutlinedIconButtonWidget(
          labelText: 'Download',
          icon: FontAwesomeIcons.download,
          onPressed: () {},
        ),
        CustomOutlinedIconButtonWidget(
          labelText: 'Share',
          icon: FontAwesomeIcons.share,
          onPressed: () => CustomBottomSheetWidget.instance.show(context),
        ),
      ],
    );
  }

  FloatingActionButton _floatingActionButton(BuildContext context) {
    return FloatingActionButton(
      heroTag: UniqueKey(),
      backgroundColor: ColorConstants.primaryColor,
      shape: const CircleBorder(),
      onPressed: () {
        context.goNamed(RoutesEnum.createResume.name);
        log('Floating Action Button Pressed');
      },
      child: FontAwesomeIcons.plus.toFaIconWhiteColor,
    );
  }

  Container _tipContainerSection(BuildContext context) {
    return Container(
      margin: context.edgeInsetsVerticalSmall,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorConstants.myLightGrey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icons.tips_and_updates_rounded.toIconPrimaryColor,
        title: Text(
          LocaleKeys.home_topMessage.locale,
          style: context.size14Bold,
        ),
        trailing: Icons.chevron_right_rounded.toIconDefaultColor,
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      titleSpacing: 18,
      automaticallyImplyLeading: false,
      title: Text.rich(
        TextSpan(
          text: 'Fix',
          style: context.defaultSizeBoldWithColor(ColorConstants.primaryColor),
          children: <TextSpan>[
            TextSpan(
              text: 'Resume',
              style: context.defaultSizeBoldWithColor(ColorConstants.myBlack),
            ),
          ],
        ),
      ),
      actions: [
        CustomIconButtonWidget(
          iconData: FontAwesomeIcons.crown,
          color: ColorConstants.myYellow,
          size: 22,
          onTap: () {},
        ),
        context.horizontalPaddingMedium,
        CircleAvatar(
          radius: 18,
          child: Image.asset('avatar'.toPNG),
        ),
        context.horizontalPaddingMedium,
      ],
    );
  }
}
