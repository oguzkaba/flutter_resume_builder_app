import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';
import 'package:flutter_resume_builder_app/core/enums/routes_enum.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/icon_extension.dart';
import 'package:flutter_resume_builder_app/core/extensions/string_extensions.dart';
import 'package:flutter_resume_builder_app/core/init/lang/locale_keys.g.dart';
import 'package:flutter_resume_builder_app/core/widgets/custom_coloredbox_column_widget.dart';
import 'package:flutter_resume_builder_app/core/widgets/custom_filled_tf_widget.dart';
import 'package:flutter_resume_builder_app/core/widgets/custom_filledbutton_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

/// This Dart class named CreateResumeView extends StatelessWidget.
class CreateResumeView extends StatelessWidget {
  /// In the provided Dart code snippet, the constructor `const CreateResumeView({super.key});` is defining a
  const CreateResumeView({super.key});
  @override
  Widget build(BuildContext context) {
    final resumeNameController = TextEditingController();
    final resumeName = ValueNotifier<String>('');
    final selectedLang = ValueNotifier<int>(0);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          LocaleKeys.home_create_name.locale,
          style: context.size18Bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ValueListenableBuilder(
            valueListenable: resumeName,
            builder: (context, name, child) => ValueListenableBuilder(
              valueListenable: selectedLang,
              builder: (_, __, ___) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _resumeNameSection(resumeNameController, resumeName, name),
                  context.verticalPaddingSmall,
                  _resumeLangSection(context, selectedLang),
                  context.verticalPaddingNormal,
                  _continueBottomSection(
                    name,
                    context,
                    resumeName.value,
                    selectedLang.value,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Align _continueBottomSection(
    String name,
    BuildContext context,
    String resumeName,
    int selectedLang,
  ) {
    return Align(
      alignment: Alignment.centerRight,
      child: CustomFilledButtonWidget(
        buttonText: LocaleKeys.home_create_continue.locale,
        width: 120,
        onPressed: name.isEmpty
            ? null
            : () {
                final langName = selectedLang == 0
                    ? LocaleKeys.home_create_resumeLanguageEng.locale
                    : LocaleKeys.home_create_resumeLanguageTr.locale;
                log('Continue');
                context.goNamed(
                  RoutesEnum.entryInfo.name,
                  extra: <String>[resumeName, langName],
                );
              },
      ),
    );
  }

  CustomColoredBoxColumnWidget _resumeNameSection(
    TextEditingController resumeNameController,
    ValueNotifier<String> resumeName,
    String name,
  ) {
    return CustomColoredBoxColumnWidget(
      labelText: LocaleKeys.home_create_resumeName.locale,
      children: [
        CustomFilledTextFieldWidget(
          controller: resumeNameController,
          onChanged: (value) => resumeName.value = value,
          hintText: LocaleKeys.home_create_resumeNameHint.locale,
          suffixIcon: name.isNotEmpty
              ? FontAwesomeIcons.circleCheck.toIconPrimaryColorSized(18)
              : null,
        ),
      ],
    );
  }

  CustomColoredBoxColumnWidget _resumeLangSection(
    BuildContext context,
    ValueNotifier<int> selectedLang,
  ) {
    return CustomColoredBoxColumnWidget(
      labelText: LocaleKeys.home_create_resumeLanguage.locale,
      children: [
        Row(
          children: [
            ChoiceChip(
              side: BorderSide(
                color: selectedLang.value == 0
                    ? context.colorScheme.background
                    : ColorConstants.myLightGrey,
              ),
              label: Text(
                LocaleKeys.home_create_resumeLanguageEng.locale,
                style: context.size12Bold,
              ),
              selected: selectedLang.value == 0,
              onSelected: (value) => selectedLang.value = 0,
            ),
            context.horizontalPaddingNormal,
            ChoiceChip(
              side: BorderSide(
                color: selectedLang.value == 1
                    ? context.colorScheme.background
                    : ColorConstants.myLightGrey,
              ),
              label: Text(
                LocaleKeys.home_create_resumeLanguageTr.locale,
                style: context.size12Bold,
              ),
              selected: selectedLang.value == 1,
              onSelected: (value) => selectedLang.value = 1,
            ),
          ],
        ),
      ],
    );
  }
}
