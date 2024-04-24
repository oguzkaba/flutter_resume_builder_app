import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';
import 'package:flutter_resume_builder_app/core/enums/routes_enum.dart';
import 'package:flutter_resume_builder_app/core/extensions/asset_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';
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
              _tipContainer(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('My Resume', style: context.body18BoldBlack),
                  Text(
                    'See all',
                    style: context.body14BoldPrimaryColor,
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
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          child: Image.asset(
                            'resume/sample_resume1'.toPNG,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_horiz,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      indent: 32,
                      endIndent: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: ColorConstants.myMediumGrey,
                            ),
                          ),
                          onPressed: () {},
                          icon: Icon(
                            Icons.visibility_rounded,
                            color: ColorConstants.primaryColor,
                          ),
                          label: Text(
                            'View',
                            style: context.body12BoldBlack,
                          ),
                        ),
                        OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: ColorConstants.myMediumGrey,
                            ),
                          ),
                          onPressed: () {},
                          icon: Icon(
                            Icons.file_download_rounded,
                            size: 20,
                            color: ColorConstants.primaryColor,
                          ),
                          label: Text(
                            'Download',
                            style: context.body12BoldBlack,
                          ),
                        ),
                        OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: ColorConstants.myMediumGrey,
                            ),
                          ),
                          onPressed: () {},
                          icon: Icon(
                            Icons.share_rounded,
                            size: 20,
                            color: ColorConstants.primaryColor,
                          ),
                          label: Text(
                            'Share',
                            style: context.body12BoldBlack,
                          ),
                        ),
                      ],
                    ),
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

  FloatingActionButton _floatingActionButton(BuildContext context) {
    return FloatingActionButton(
      heroTag: UniqueKey(),
      backgroundColor: ColorConstants.primaryColor,
      shape: const CircleBorder(),
      onPressed: () {
        context.goNamed(RoutesEnum.createResume.name);
        log('Floating Action Button Pressed');
      },
      child: Icon(Icons.add, color: ColorConstants.myWhite),
    );
  }

  Container _tipContainer(BuildContext context) {
    return Container(
      margin: context.edgeInsetsVerticalSmall,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorConstants.myLightGrey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(
          Icons.tips_and_updates_rounded,
          color: ColorConstants.primaryColor,
        ),
        title: Text(
          'Tips for your resume',
          style: context.textTheme.labelLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: const Icon(
          Icons.chevron_right_rounded,
        ),
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
          style: context.body18BoldPrimaryColor,
          children: <TextSpan>[
            TextSpan(
              text: 'Resume',
              style: context.body18BoldBlack,
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset('premium_badge'.toPNG, width: 32),
        ),
        CircleAvatar(
          radius: 18,
          child: Image.asset('avatar'.toPNG),
        ),
        context.horizontalPaddingMedium,
      ],
    );
  }
}
