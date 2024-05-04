// ignore_for_file: public_member_api_docs, require_trailing_commas

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/icon_extension.dart';
import 'package:flutter_resume_builder_app/core/widgets/custom_dialog_appbar_widget.dart';
import 'package:flutter_resume_builder_app/core/widgets/custom_segmented_button_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PremiumView extends StatelessWidget {
  const PremiumView({super.key});

  @override
  Widget build(BuildContext context) {
    final freePlanList = <String>[
      'Limited resumes',
      'No customization options',
      '1 PDF downloads',
      'Watermarked PDFs',
    ];
    final basicPlanList = <String>[
      'Limited resumes',
      'Limited customization options',
      '10 PDF downloads',
      'Non-watermarked PDFs',
    ];
    final proPlanList = <String>[
      'All resume templates',
      'Unlimited resumes',
      'Unlimited customization options',
      'Unlimited PDF downloads',
      'Non-watermarked PDFs',
      'Priority support',
    ];
    final selectedPlan = ValueNotifier<int>(0);
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: const CustomDialogAppBarWidget(
          title: 'Premium',
        ),
        body: SingleChildScrollView(
          primary: true,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  FontAwesomeIcons.crown
                      .toFaIconCustomColorSized(ColorConstants.myYellow, 56),
                  Text(
                    'Go Premium!',
                    style: context.size28ExtraBold,
                  ),
                  Text(
                    'Select the plan that suits you best!',
                    style: context
                        .size14BoldWithColor(ColorConstants.myMediumGrey),
                  ),
                  context.verticalPaddingSmall,
                  ValueListenableBuilder(
                    valueListenable: selectedPlan,
                    builder: (context, value, child) => Column(
                      children: [
                        CustomSegmentedButtonWidget(
                            segments: const [
                              ButtonSegment(
                                value: 0,
                                label: Text('Free'),
                              ),
                              ButtonSegment(
                                value: 1,
                                label: Text('Basic'),
                              ),
                              ButtonSegment(
                                value: 2,
                                label: Text('Professional'),
                              ),
                            ],
                            value: selectedPlan.value,
                            selected: (value) => selectedPlan.value = value),
                        context.verticalPaddingSmall,
                        SizedBox(
                          width: context.width * 0.9,
                          child: (value == 0)
                              ? _planDetailsListView(context, freePlanList)
                              : value == 1
                                  ? _planDetailsListView(context, basicPlanList)
                                  : _planDetailsListView(context, proPlanList),
                        ),
                        Text.rich(
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            TextSpan(
                              text: 'By joining, you agree to our ',
                              style: context.defaultSizeBoldWithColor(
                                  ColorConstants.myLightGrey),
                              children: [
                                TextSpan(
                                  text: 'Terms of Service ',
                                  style: context.defaultSizeBoldWithColor(
                                      ColorConstants.primaryColor),
                                ),
                                TextSpan(
                                  text: '\nand ',
                                  style: context.size14BoldWithColor(
                                      ColorConstants.myLightGrey),
                                ),
                                TextSpan(
                                  text: 'Privacy Policy.',
                                  style: context.defaultSizeBoldWithColor(
                                      ColorConstants.primaryColor),
                                ),
                              ],
                            )),
                        context.verticalPaddingSmall,
                        SizedBox(
                          width: context.width,
                          height: 48,
                          child: (value == 0)
                              ? null
                              : FilledButton(
                                  onPressed: () {},
                                  child: Text(
                                    (value == 1)
                                        ? r'$10 / Month'
                                        : r'$20 / Month',
                                    style: context.size16BoldWithColor(
                                        ColorConstants.myWhite),
                                  ),
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
      ),
    );
  }

  ListView _planDetailsListView(BuildContext context, List<String> planList) {
    return ListView.builder(
      shrinkWrap: true,
      padding: context.edgeInsetsHorizontalMedium,
      itemCount: planList.length,
      itemBuilder: (context, index) => CupertinoListTile(
        title: Text(
          planList[index],
          style: context.defaultSizeBold,
        ),
        leading: FontAwesomeIcons.circleCheck.toFaIconPrimaryColorSized(20),
      ),
    );
  }
}
