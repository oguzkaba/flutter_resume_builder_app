import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/enums/routes_enum.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/extensions/string_extensions.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/core/init/lang/locale_keys.g.dart';
import 'package:fixresume/core/utils/general_util.dart';
import 'package:fixresume/core/widgets/custom_coloredbox_column_widget.dart';
import 'package:fixresume/core/widgets/custom_dialog_appbar_widget.dart';
import 'package:fixresume/core/widgets/custom_dialog_widget.dart';
import 'package:fixresume/core/widgets/custom_outlined_button_widget.dart';
import 'package:fixresume/core/widgets/custom_snackbar_widget.dart';
import 'package:fixresume/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:fixresume/features/auth/presentation/blocs/subscriptions/subscriptions_bloc.dart';
import 'package:fixresume/features/auth/presentation/widgets/avatar_widget.dart';
import 'package:fixresume/features/resume/presentation/blocs/personal_info/personal_info_bloc.dart';
import 'package:fixresume/features/resume/presentation/blocs/resumes/resumes_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

/// AccountView class is a StatelessWidget.
class AccountView extends StatefulWidget {
  /// constructor for the `AccountView` class.
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  void initState() {
    getIt<AuthBloc>().add(const AuthEvent.loggedIn());
    getIt<AuthBloc>().state.whenOrNull(
      success: (user) {
        getIt<ResumesBloc>().add(const ResumesEvent.getResumes());
        // getIt<SkillsBloc>().add(const SkillsEvent.getSkills());
        getIt<SubscriptionsBloc>()
            .add(SubscriptionsEvent.getSubscriptions(userId: user.userId));
        getIt<PersonalInfoBloc>().add(
          const PersonalInfoEvent.getPersonalInfo(),
        );
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (value, _) {
        context.goNamed(RoutesEnum.settings.name);
      },
      child: Scaffold(
        appBar: CustomDialogAppBarWidget(
          title: LocaleKeys.settings_account_name.locale(context),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _profileSection(),
                context.verticalPaddingSmall,
                Column(
                  children: [
                    _subscriptionsSection(),
                    context.verticalPaddingSmall,
                    _resumesSection(),
                    context.verticalPaddingSmall,
                    // _skillsSection(),
                    // context.verticalPaddingSmall,
                    _supportSection(),
                  ],
                ),
              ],
            ),
          ),
        ),
        persistentFooterButtons: [
          _logoutButton(context),
        ],
      ),
    );
  }

  /// Profile section.
  Widget _profileSection() {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.maybeWhen(
          failure: (message) => Center(
            child: Text(
              'An error occurred: $message',
              overflow: TextOverflow.ellipsis,
              style: context.size14BoldWithColor(ColorConstants.myDarkRed),
            ),
          ),
          success: (user) {
            return CustomColoredBoxColumnWidget(
              labelText: 'Profile',
              mooreIcon: true,
              onTap: () => context.pushNamed(RoutesEnum.registerDetails.name),
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const AvatarWidget(
                      radius: 56,
                      isEdit: false,
                    ),
                    context.horizontalPaddingSmall,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user.fullName ?? 'No Name',
                          style: context.size14Bold,
                        ),
                        Text(
                          user.currentUser.email!,
                          style: context.size14NormalWithColor(
                            ColorConstants.myMediumGrey,
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'connected with ',
                            style: context.size14NormalWithColor(
                              ColorConstants.myMediumGrey,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: (user.currentUser.appMetadata['provider']
                                        as String?)
                                    ?.capitalize,
                                style: context.size14BoldWithColor(
                                  GeneralUtil.providerColor(
                                    user.currentUser.appMetadata['provider']
                                        as String,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        BlocBuilder<PersonalInfoBloc, PersonalInfoState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              personalInfoFailure: (message) => Center(
                                child: SizedBox(
                                  width: context.width - 180,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      'An error occurred: $message',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      textWidthBasis: TextWidthBasis.parent,
                                      style: context.size14BoldWithColor(
                                        ColorConstants.myDarkRed,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              personalInfoSuccess: (personalInfo) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${personalInfo.city}, ${personalInfo.country}',
                                      style: context.size14NormalWithColor(
                                        ColorConstants.myMediumGrey,
                                      ),
                                    ),
                                    Text(
                                      '${personalInfo.phoneCountryCode} ${GeneralUtil.phoneFormatted(personalInfo.phone)}',
                                      style: context.size14BoldWithColor(
                                        ColorConstants.myDark,
                                      ),
                                    ),
                                  ],
                                );
                              },
                              orElse: () => const SizedBox.shrink(),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
          orElse: () => context.shimmerColoredBox(1, height: 176),
        );
      },
    );
  }

  // /// Skills section.
  // CustomColoredBoxColumnWidget _skillsSection() {
  //   return CustomColoredBoxColumnWidget(
  //     labelText: 'Skills',
  //     mooreIcon: true,
  //     children: [
  //       BlocBuilder<SkillsBloc, SkillsState>(
  //         builder: (context, state) {
  //           return state.maybeWhen(
  //             skillsFailure: (message) => Center(
  //               child: Text(
  //                 'An error occurred: $message',
  //                 style: context.size14BoldWithColor(ColorConstants.myDarkRed),
  //               ),
  //             ),
  //             skillsSuccess: (skills) {
  //               return ListView.builder(
  //                 shrinkWrap: true,
  //                 physics: const NeverScrollableScrollPhysics(),
  //                 itemBuilder: (context, index) {
  //                   return Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Text(
  //                         skills[index].name,
  //                         style: context
  //                             .size14BoldWithColor(ColorConstants.myDark),
  //                       ),
  //                       Text(
  //                         skills[index].level,
  //                         style: context.size14NormalWithColor(
  //                           ColorConstants.myMediumGrey,
  //                         ),
  //                       ),
  //                     ],
  //                   );
  //                 },
  //                 itemCount: skills.length,
  //               );
  //             },
  //             orElse: () => const Center(child: LinearProgressIndicator()),
  //           );
  //         },
  //       ),
  //     ],
  //   );
  // }

  /// Resumes section.
  Widget _resumesSection() {
    return BlocBuilder<ResumesBloc, ResumesState>(
      builder: (context, state) {
        return state.maybeWhen(
          resumesFailure: (message) => Center(
            child: Text(
              'An error occurred: $message',
              style: context.size14BoldWithColor(ColorConstants.myDarkRed),
            ),
          ),
          resumesSuccess: (resumes) {
            return CustomColoredBoxColumnWidget(
              labelText: 'Resumes',
              mooreIcon: true,
              children: [
                if (resumes.isEmpty)
                  Text(
                    'No resumes found',
                    style: context.size14BoldWithColor(ColorConstants.myDark),
                  ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: context.width - 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                resumes[index].name,
                                overflow: TextOverflow.ellipsis,
                                style: context
                                    .size14BoldWithColor(ColorConstants.myDark),
                              ),
                              Text(
                                'Last Updated: ${resumes[index].createdAt.day}.${resumes[index].createdAt.month}.${resumes[index].createdAt.year}',
                                style: context.size14BoldWithColor(
                                  ColorConstants.myMediumGrey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              '%${resumes[index].powerRate} power',
                              style: context.size14NormalWithColor(
                                ColorConstants.myBlack,
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                  width: 100,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    color: ColorConstants.myWhite,
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                      color: ColorConstants.myLightGrey,
                                      // color: GeneralUtil.resumePowerRateColor(
                                      //   resumes[index].powerRate ?? 50,
                                      // ).resolve({}),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: (resumes[index].powerRate ?? 50)
                                      .toDouble(),
                                  height: 12,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        // GeneralUtil.resumePowerRateColor(
                                        //   resumes[index].powerRate ?? 50,
                                        // ).resolve({}).withOpacity(.5),
                                        // GeneralUtil.resumePowerRateColor(
                                        //   resumes[index].powerRate ?? 50,
                                        // ).resolve({}),
                                        ColorConstants.primaryColor
                                            .withOpacity(.9),
                                        ColorConstants.primaryColor
                                            .withOpacity(.7),
                                        ColorConstants.primaryColor,
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                  itemCount: resumes.length,
                ),
              ],
            );
          },
          orElse: () => context.shimmerColoredBox(1, height: 176),
        );
      },
    );
  }

  /// Subscription section.
  CustomColoredBoxColumnWidget _subscriptionsSection() {
    return CustomColoredBoxColumnWidget(
      labelText: 'Subscriptions',
      mooreIcon: true,
      children: [
        BlocBuilder<SubscriptionsBloc, SubscriptionsState>(
          builder: (context, state) {
            return state.maybeWhen(
              failure: (message) => Center(
                child: Text(
                  'An error occurred: $message',
                  overflow: TextOverflow.ellipsis,
                  style: context.size14BoldWithColor(ColorConstants.myDarkRed),
                ),
              ),
              successSubscriptions: (subscriptions) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${subscriptions!.accType.capitalize} Account',
                      style: context.size14BoldWithColor(ColorConstants.myDark),
                    ),
                    Text(
                      subscriptions.updatedAt != null
                          ? 'Subscriptions Date: ${subscriptions.updatedAt!.day}.${subscriptions.updatedAt!.month}.${subscriptions.updatedAt!.year}'
                          : 'No subscription',
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      style: context.size14NormalWithColor(
                        ColorConstants.myMediumGrey,
                      ),
                    ),
                    Text(
                      'Subscription Status: ${subscriptions.deletedAt ?? 'Active'}',
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      style: context.size14NormalWithColor(
                        ColorConstants.myMediumGrey,
                      ),
                    ),
                  ],
                );
              },
              orElse: () => context.shimmerColoredBox(1, height: 116),
            );
          },
        ),
      ],
    );
  }

  CustomColoredBoxColumnWidget _supportSection() {
    return CustomColoredBoxColumnWidget(
      crossAxisAlignment: CrossAxisAlignment.start,
      labelText: 'Support',
      children: [
        TextField(
          minLines: 3,
          maxLines: 6,
          style: context.size14NormalWithColor(ColorConstants.myDark),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            hintText: 'For any questions or support, please contact us at',
          ),
        ),
        CustomOutlinedIconButtonWidget(
          labelText: 'Send',
          fontSize: 14,
          icon: FontAwesomeIcons.paperPlane,
          color: ColorConstants.primaryColor,
          iconSize: 18,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          fixedSize: Size(context.width, 42),
          onPressed: () {},
        ),
      ],
    );
  }

  /// Logout button.
  Widget _logoutButton(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          failure: (message) {
            CustomSnackbarWidget.showError(context, message);
          },
          successLogout: () {
            context.goNamed(RoutesEnum.login.name);
          },
        );
      },
      builder: (context, state) {
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
          onPressed: () async => CustomDialogWidget.showCustomDialog(
            context: context,
            onConfirm: () => getIt<AuthBloc>().add(const AuthEvent.logout()),
          ),
          loading: state.maybeWhen(
            orElse: () => false,
            loading: () => true,
          ),
        );
      },
    );
  }
}
