import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/enums/routes_enum.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/extensions/icon_extension.dart';
import 'package:fixresume/core/extensions/string_extensions.dart';
import 'package:fixresume/core/init/lang/locale_keys.g.dart';
import 'package:fixresume/core/widgets/custom_coloredbox_column_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class EntryInfoView extends StatelessWidget {
  const EntryInfoView({required this.resumeInfo, super.key});

  /// The title of the view.
  final List<String> resumeInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.home_create_entryInfo_name.locale,
          style: context.size18Bold,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Column(
            children: [
              _resumeInfoSection(),
              context.verticalPaddingSmall,
              _resumePersonalInfoSection(context),
              context.verticalPaddingSmall,
              const CustomColoredBoxColumnWidget(
                labelText: 'Resume Power Rate',
                children: [
                  Placeholder(
                    fallbackHeight: 100,
                  ),
                ],
              ),
              context.verticalPaddingSmall,
              const CustomColoredBoxColumnWidget(
                labelText: 'Summary',
                children: [
                  Placeholder(
                    fallbackHeight: 100,
                  ),
                ],
              ),
              context.verticalPaddingSmall,
              const CustomColoredBoxColumnWidget(
                labelText: 'Last Updated Date',
                children: [
                  Placeholder(
                    fallbackHeight: 100,
                  ),
                ],
              ),
              context.verticalPaddingSmall,
              const CustomColoredBoxColumnWidget(
                labelText: 'Experience',
                children: [
                  Placeholder(
                    fallbackHeight: 300,
                  ),
                ],
              ),
              context.verticalPaddingSmall,
              const CustomColoredBoxColumnWidget(
                labelText: 'Education',
                children: [],
              ),
              context.verticalPaddingSmall,
              const CustomColoredBoxColumnWidget(
                labelText: 'Personal Details',
                children: [],
              ),
              context.verticalPaddingSmall,
              const CustomColoredBoxColumnWidget(
                labelText: 'Skills',
                children: [],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: _floatingActionButton(context),
    );
  }

  Stack _resumePersonalInfoSection(BuildContext context) {
    return Stack(
      children: [
        CustomColoredBoxColumnWidget(
          labelText: 'Kişisel Bilgiler',
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: CachedNetworkImageProvider(
                'https://eu.ui-avatars.com/api/?name=oğuz+kaba&size=100',
              ),
            ),
            context.verticalPaddingSmall,
            Text(
              'oğuz kaba'.capitalize,
              style: context.size22Bold,
            ),
            Text(
              'Flutter Developer',
              style: context.size16Bold,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'oguz-kaba@hotmail.com',
                ),
                context.horizontalPaddingSmall,
                FontAwesomeIcons.solidCircleCheck.toFaIconPrimaryColorSized(16),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '90 (542) 685 2005',
                ),
                context.horizontalPaddingSmall,
                FontAwesomeIcons.solidCircleCheck.toFaIconPrimaryColorSized(16),
              ],
            ),
          ],
        ),
        Positioned(
          top: 10,
          right: 10,
          child: IconButton(
            onPressed: () {}, //To-do: Implement the edit functionality
            icon:
                FontAwesomeIcons.solidPenToSquare.toFaIconPrimaryColorSized(20),
          ),
        ),
      ],
    );
  }

  CustomColoredBoxColumnWidget _resumeInfoSection() {
    return CustomColoredBoxColumnWidget(
      labelText: LocaleKeys.home_create_entryInfo_resumeInfo.locale,
      children: [
        Text(
          '${resumeInfo[0].capitalize} - [ ${resumeInfo[1].capitalize} ]',
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
        context.goNamed(RoutesEnum.premium.name);
        log('Floating Action Button[Entry Info] Pressed');
      },
      child: FontAwesomeIcons.plus.toFaIconWhiteColor,
    );
  }
}
