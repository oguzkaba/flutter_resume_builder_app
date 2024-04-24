// ignore_for_file: public_member_api_docs, require_trailing_commas

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';
import 'package:flutter_resume_builder_app/core/extensions/asset_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';
import 'package:flutter_resume_builder_app/core/widgets/segmented_button_widget.dart';

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
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 32,
      ),
      body: SingleChildScrollView(
        primary: true,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Image.asset('premium_badge'.toPNG, width: 64),
                Text(
                  'Go Premium!',
                  style: context.blackBold.copyWith(fontSize: 28),
                ),
                Text(
                  'Select the plan that suits you best!',
                  style: context.body14BoldMediumGrey,
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
                            style: context.body12BoldLightGrey,
                            children: [
                              TextSpan(
                                text: 'Terms of Service ',
                                style: context.primaryBold,
                              ),
                              TextSpan(
                                text: '\nand ',
                                style: context.body12BoldLightGrey,
                              ),
                              TextSpan(
                                text: 'Privacy Policy.',
                                style: context.primaryBold,
                              ),
                            ],
                          )),
                      context.verticalPaddingSmall,
                      SizedBox(
                        width: context.width,
                        height: 48,
                        child: FilledButton(
                          onPressed: () {},
                          child: Text(
                            (value == 0)
                                ? r'$0 / Month'
                                : (value == 1)
                                    ? r'$10 / Month'
                                    : r'$20 / Month',
                            style: context.textTheme.titleMedium
                                ?.copyWith(color: Colors.white),
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
            style: context.blackBold,
          ),
          leading: Icon(
            Icons.check_circle_outline,
            size: 28,
            color: ColorConstants.primaryColor,
          ),
          onTap: () {}),
    );
  }
}
