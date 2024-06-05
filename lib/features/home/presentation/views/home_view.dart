import 'dart:developer';

import 'package:fixresume/core/constants/app/color_constants.dart';
import 'package:fixresume/core/enums/routes_enum.dart';
import 'package:fixresume/core/extensions/asset_extension.dart';
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
import 'package:fixresume/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:fixresume/features/resume/data/models/resumes_model.dart';
import 'package:fixresume/features/resume/data/models/sections/experiences_model.dart';
import 'package:fixresume/features/resume/data/models/sections/skills_model.dart';
import 'package:fixresume/features/resume/data/models/sections/social_accounts_model.dart';
import 'package:fixresume/features/resume/templates/data/models/templates_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// This Dart class named HomeView extends StatefulWidget.
class HomeView extends StatelessWidget {
  ///constructor
  const HomeView({super.key});

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
                    LocaleKeys.home_myResumes.locale,
                    style: context.size16Bold,
                  ),
                  Text(
                    LocaleKeys.home_seeAll.locale,
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
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorConstants.myLightGrey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    _myResumeThumb(),
                    const Divider(
                      indent: 32,
                      endIndent: 32,
                    ),
                    _resumeActionButtons(context, user),
                    context.verticalPaddingSmall,
                  ],
                ),
              ),
            ),
            context.verticalPaddingMedium,
          ],
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

  Row _resumeActionButtons(BuildContext context, UserDetailsEntity user) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomOutlinedIconButtonWidget(
          labelText: LocaleKeys.home_buttons_view.locale,
          icon: FontAwesomeIcons.solidEye,
          onPressed: () async {
            await PdfUtil.createPdf('Oguzkaba.pdf', user);
            if (context.mounted) {
              await PdfUtil.openPdf(context, 'Oguzkaba.pdf').then(
                (value) => context.goNamed(
                  RoutesEnum.previewResume.name,
                  extra: value,
                ),
              );
            }
          },
        ),
        CustomOutlinedIconButtonWidget(
          labelText: LocaleKeys.home_buttons_download.locale,
          icon: FontAwesomeIcons.download,
          onPressed: () {},
        ),
        CustomOutlinedIconButtonWidget(
          labelText: LocaleKeys.home_buttons_share.locale,
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
      //onPressed: () => context.goNamed(RoutesEnum.createResume.name),
      onPressed: () => _getResumes(context),
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
          color: GeneralUtil.badgeColor,
          size: 22,
          onTap: () => context.goNamed(RoutesEnum.premium.name),
        ),
        context.horizontalPaddingMedium,
        getIt<AuthBloc>().state.maybeWhen(
              success: (user) {
                return GestureDetector(
                  onTap: () => context.goNamed(RoutesEnum.account.name),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: GeneralUtil.profileImage(user),
                  ),
                );
              },
              orElse: () => const SizedBox.shrink(),
            ),
        context.horizontalPaddingMedium,
      ],
    );
  }

  Future<ResumesModel> _getResumes(BuildContext context) async {
    final response = await getIt<SupabaseClient>().from('resumes').select();
    final responseSkills =
        await getIt<SupabaseClient>().from('templates').select().eq('id', 1);
    log(templatesModelFromJson(responseSkills).first.categories.toString());
    return resumesModelFromJson(response).first;
  }
}
