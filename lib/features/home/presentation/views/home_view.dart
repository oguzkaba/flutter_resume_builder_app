import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/enums/routes_enum.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/extensions/icon_extension.dart';
import 'package:fixresume/core/extensions/string_extensions.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/core/init/lang/locale_keys.g.dart';
import 'package:fixresume/core/utils/general_util.dart';
import 'package:fixresume/core/utils/pdf_util.dart';
import 'package:fixresume/core/widgets/custom_bottomsheet_widget.dart';
import 'package:fixresume/core/widgets/custom_icon_button_widget.dart';
import 'package:fixresume/core/widgets/custom_outlined_button_widget.dart';
import 'package:fixresume/features/auth/domain/entities/user_details_entity.dart';
import 'package:fixresume/features/auth/presentation/blocs/auth/auth_bloc.dart';
import 'package:fixresume/features/auth/presentation/widgets/avatar_widget.dart';
import 'package:fixresume/features/resume/presentation/blocs/skills/skills_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

/// This Dart class named HomeView extends StatelessWidget.
class HomeView extends StatefulWidget {
  ///constructor
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ValueNotifier<Uint8List?> thumbData = ValueNotifier<Uint8List?>(null);
  final user = getIt<AuthBloc>().state.whenOrNull(success: (user) => user);

  @override
  void initState() {
    getIt<SkillsBloc>().add(const SkillsEvent.getSkills());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: _appBar(context),
      body: getIt<AuthBloc>().state.maybeWhen(
        success: (user) {
          return _bodySection(context, user);
        },
        orElse: () {
          return const SizedBox.shrink();
        },
      ),
      floatingActionButton: _floatingActionButton(context),
    );
  }

  Widget _bodySection(BuildContext context, UserDetailsEntity user) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(flex: 2, child: _tipContainerSection(context)),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    LocaleKeys.home_myResumes.locale(context),
                    style: context.size16Bold,
                  ),
                  Text(
                    LocaleKeys.home_seeAll.locale(context),
                    style: context.size14BoldWithColor(
                      ColorConstants.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            context.verticalPaddingSmall,
            Expanded(
              flex: 15,
              child: ValueListenableBuilder<Uint8List?>(
                valueListenable: thumbData,
                builder: (context, thumbData, child) {
                  return thumbData != null
                      ? Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: ColorConstants.myLightGrey,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListView(
                            shrinkWrap: true,
                            children: [
                              _myResumeThumb(thumbData),
                              const Divider(
                                indent: 32,
                                endIndent: 32,
                              ),
                              _resumeActionButtons(context, user),
                              context.verticalPaddingSmall,
                            ],
                          ),
                        )
                      : Center(
                          child: Text('No Resume', style: context.size16Bold),
                        );
                },
              ),
            ),
            context.verticalPaddingMedium,
          ],
        ),
      ),
    );
  }

  Stack _myResumeThumb(Uint8List thumbData) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Image.memory(thumbData),
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

  Row _resumeActionButtons(BuildContext context, UserDetailsEntity user) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomOutlinedIconButtonWidget(
          labelText: LocaleKeys.home_buttons_view.locale(context),
          icon: FontAwesomeIcons.solidEye,
          onPressed: () async {
            await PdfUtil.createPdf('oguzkaba.pdf', user)
                .then((value) => thumbData.value = value);
            if (context.mounted) {
              await PdfUtil.openPdf(context, 'oguzkaba.pdf').then(
                (value) {
                  if (context.mounted) {
                    context.goNamed(
                      RoutesEnum.previewResume.name,
                      extra: value,
                    );
                  }
                },
              );
            }
          },
        ),
        CustomOutlinedIconButtonWidget(
          labelText: LocaleKeys.home_buttons_download.locale(context),
          icon: FontAwesomeIcons.download,
          onPressed: () {},
        ),
        CustomOutlinedIconButtonWidget(
          labelText: LocaleKeys.home_buttons_share.locale(context),
          icon: FontAwesomeIcons.share,
          onPressed: () =>
              CustomBottomSheetWidget.instance.showResumeShare(context),
        ),
      ],
    );
  }

  FloatingActionButton _floatingActionButton(BuildContext context) {
    return FloatingActionButton(
      heroTag: UniqueKey(),
      backgroundColor: ColorConstants.primaryColor,
      shape: const CircleBorder(),
      // onPressed: () => context.goNamed(RoutesEnum.createResume.name),
      onPressed: () => _getResumes(context),
      child: FontAwesomeIcons.plus.toFaIconWhiteColor,
    );
  }

  Future<void> _getResumes(BuildContext context) async {
    await PdfUtil.createPdf('oguzkaba.pdf', user!)
        .then((value) => thumbData.value = value);
    if (context.mounted) {
      await PdfUtil.openPdf(context, 'oguzkaba.pdf').then((value) {
        if (context.mounted) {
          context.goNamed(
            RoutesEnum.previewResume.name,
            extra: value,
          );
        }
      });
    }
  }

  //   Future<void> _getPurchasesList(BuildContext context) async {
  //   await PurchasesManager.fetchOffers().then(
  //     (value) {
  //       if (value.isEmpty) {
  //         CustomSnackbarWidget.showError(context, 'Error fetching offers');
  //         return;
  //       }
  //       CustomBottomSheetWidget.instance.showPurchase(context, value.first);
  //     },
  //   );
  // }

  // Future<void> _getThumbnailPdf(BuildContext context) async {
  //   final user = getIt<AuthBloc>().state.whenOrNull(success: (user) => user);
  //   await PdfUtil.createPdf('Oguzkaba.pdf', user!)
  //       .then((value) => thumbData.value = value);
  //   if (context.mounted) {
  //     await PdfUtil.openPdf(context, 'Oguzkaba.pdf').then(
  //       (value) => context.goNamed(
  //         RoutesEnum.previewResume.name,
  //         extra: value,
  //       ),
  //     );
  //   }
  // }
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
          LocaleKeys.home_topMessage.locale(context),
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
          color: GeneralUtil.badgeColor,
          size: 22,
          onTap: () => context.goNamed(RoutesEnum.premium.name),
        ),
        context.horizontalPaddingMedium,
        GestureDetector(
          onTap: () => context.goNamed(RoutesEnum.account.name),
          child: const AvatarWidget(radius: 18, isEdit: false),
        ),
        context.horizontalPaddingMedium,
      ],
    );
  }
}
