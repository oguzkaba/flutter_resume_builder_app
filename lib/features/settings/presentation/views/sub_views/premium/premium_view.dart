import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/enums/account_type_enum.dart';
import 'package:fixresume/core/enums/routes_enum.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/extensions/icon_extension.dart';
import 'package:fixresume/core/extensions/string_extensions.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/core/init/lang/locale_keys.g.dart';
import 'package:fixresume/core/utils/general_util.dart';
import 'package:fixresume/core/widgets/custom_dialog_appbar_widget.dart';
import 'package:fixresume/core/widgets/custom_segmented_button_widget.dart';
import 'package:fixresume/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class PremiumView extends StatelessWidget {
  const PremiumView({super.key});

  @override
  Widget build(BuildContext context) {
    final freePlanList = <String>[
      LocaleKeys.settings_premium_features_free_features1.locale,
      LocaleKeys.settings_premium_features_free_features2.locale,
      LocaleKeys.settings_premium_features_free_features3.locale,
      LocaleKeys.settings_premium_features_free_features4.locale,
      LocaleKeys.settings_premium_features_free_features5.locale,
    ];

    final basicPlanList = <String>[
      LocaleKeys.settings_premium_features_basic_features1.locale,
      LocaleKeys.settings_premium_features_basic_features2.locale,
      LocaleKeys.settings_premium_features_basic_features3.locale,
      LocaleKeys.settings_premium_features_basic_features4.locale,
      LocaleKeys.settings_premium_features_basic_features5.locale,
    ];
    final proPlanList = <String>[
      LocaleKeys.settings_premium_features_professional_features1.locale,
      LocaleKeys.settings_premium_features_professional_features2.locale,
      LocaleKeys.settings_premium_features_professional_features3.locale,
      LocaleKeys.settings_premium_features_professional_features4.locale,
      LocaleKeys.settings_premium_features_professional_features5.locale,
      LocaleKeys.settings_premium_features_professional_features6.locale,
      LocaleKeys.settings_premium_features_professional_features7.locale,
    ];
    final accType = getIt<AuthBloc>().state.maybeWhen(
          success: (user) {
            return user.accType;
          },
          orElse: () => 'free',
        );
    final accTypeIndex = AccountTypeEnum.fromString(accType).index;
    final selectedPlan = ValueNotifier<int>(accTypeIndex);
    return PopScope(
      onPopInvoked: (value) {
        context.goNamed(RoutesEnum.settings.name);
      },
      child: Scaffold(
        appBar: CustomDialogAppBarWidget(
          title: LocaleKeys.settings_premium_name.locale,
        ),
        body: SingleChildScrollView(
          primary: true,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  FontAwesomeIcons.crown
                      .toFaIconCustomColorSized(GeneralUtil.badgeColor, 56),
                  Text(
                    LocaleKeys.settings_premium_title.locale,
                    style: context.size28ExtraBold,
                  ),
                  Text(
                    LocaleKeys.settings_premium_desc.locale,
                    textAlign: TextAlign.center,
                    style: context
                        .size14BoldWithColor(ColorConstants.myMediumGrey),
                  ),
                  context.verticalPaddingSmall,
                  ValueListenableBuilder(
                    valueListenable: selectedPlan,
                    builder: (context, value, child) => value > 2
                        ? Text(
                            '${accType.capitalize} Sınırsız Yetkilendirme',
                            textAlign: TextAlign.center,
                            style: context.size45ExtraBoldWithColor(
                              GeneralUtil.badgeColor,
                            ),
                          )
                        : Column(
                            children: [
                              CustomSegmentedButtonWidget(
                                segments: [
                                  ButtonSegment(
                                    value: 0,
                                    label: Text(
                                      LocaleKeys
                                          .settings_premium_plans_free_name
                                          .locale,
                                    ),
                                  ),
                                  ButtonSegment(
                                    value: 1,
                                    label: Text(
                                      LocaleKeys
                                          .settings_premium_plans_basic_name
                                          .locale,
                                    ),
                                  ),
                                  ButtonSegment(
                                    value: 2,
                                    label: Text(
                                      LocaleKeys
                                          .settings_premium_plans_professional_name
                                          .locale,
                                    ),
                                  ),
                                ],
                                value: selectedPlan.value,
                                selected: (value) => selectedPlan.value = value,
                              ),
                              context.verticalPaddingSmall,
                              SizedBox(
                                width: context.width * 0.9,
                                child: (value == 0)
                                    ? _planDetailsListView(
                                        context,
                                        freePlanList,
                                      )
                                    : value == 1
                                        ? _planDetailsListView(
                                            context,
                                            basicPlanList,
                                          )
                                        : _planDetailsListView(
                                            context,
                                            proPlanList,
                                          ),
                              ),
                              Text.rich(
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                TextSpan(
                                  text: LocaleKeys
                                      .settings_premium_termsAndprivacy.locale,
                                  style: context.defaultSizeBoldWithColor(
                                    ColorConstants.myLightGrey,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          LocaleKeys.settings_terms_name.locale,
                                      style: context.defaultSizeBoldWithColor(
                                        ColorConstants.primaryColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          '\n${LocaleKeys.settings_premium_and.locale} ',
                                      style: context.size14BoldWithColor(
                                        ColorConstants.myLightGrey,
                                      ),
                                    ),
                                    TextSpan(
                                      text: LocaleKeys
                                          .settings_privacy_name.locale,
                                      style: context.defaultSizeBoldWithColor(
                                        ColorConstants.primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              context.verticalPaddingSmall,
                              SizedBox(
                                width: context.width,
                                height: 48,
                                child: (value == 0)
                                    ? null
                                    : FilledButton(
                                        onPressed: () {},
                                        child: _buttonText(value, context),
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

  Text _buttonText(int value, BuildContext context) {
    return Text(
      (value == 1)
          ? '${LocaleKeys.settings_premium_plans_basic_price.locale} ${LocaleKeys.currency.locale} / ${LocaleKeys.settings_premium_plans_basic_desc.locale}'
          : '${LocaleKeys.settings_premium_plans_professional_price.locale} ${LocaleKeys.currency.locale} / ${LocaleKeys.settings_premium_plans_professional_desc.locale}',
      style: context.size16BoldWithColor(ColorConstants.myWhite),
      overflow: TextOverflow.ellipsis,
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
