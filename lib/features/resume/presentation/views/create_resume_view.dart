import 'dart:developer';

import 'package:fixresume/core/enums/routes_enum.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/extensions/icon_extension.dart';
import 'package:fixresume/core/extensions/string_extensions.dart';
import 'package:fixresume/core/init/lang/locale_keys.g.dart';
import 'package:fixresume/core/widgets/custom_coloredbox_column_widget.dart';
import 'package:fixresume/core/widgets/custom_filled_textfield_widget.dart';
import 'package:fixresume/core/widgets/custom_filledbutton_widget.dart';
import 'package:flutter/material.dart';
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
          LocaleKeys.home_create_name.locale(context),
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
                  _resumeNameSection(
                    context,
                    resumeNameController,
                    resumeName,
                    name,
                  ),
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
        buttonText: LocaleKeys.home_create_continue.locale(context),
        width: 120,
        onPressed: name.isEmpty
            ? null
            : () {
                final langName = selectedLang == 0
                    ? LocaleKeys.home_create_resumeLanguageEng.locale(context)
                    : LocaleKeys.home_create_resumeLanguageTr.locale(context);
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
    BuildContext context,
    TextEditingController resumeNameController,
    ValueNotifier<String> resumeName,
    String name,
  ) {
    return CustomColoredBoxColumnWidget(
      labelText: LocaleKeys.home_create_resumeName.locale(context),
      children: [
        CustomFilledTextFieldWidget(
          controller: resumeNameController,
          onChanged: (value) => resumeName.value = value,
          hintText: LocaleKeys.home_create_resumeNameHint.locale(context),
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
      labelText: LocaleKeys.home_create_resumeLanguage.locale(context),
      children: [
        Row(
          children: [
            ChoiceChip(
              label: Text(
                LocaleKeys.home_create_resumeLanguageEng.locale(context),
              ),
              selected: selectedLang.value == 0,
              onSelected: (value) => selectedLang.value = 0,
            ),
            context.horizontalPaddingNormal,
            ChoiceChip(
              label: Text(
                LocaleKeys.home_create_resumeLanguageTr.locale(context),
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
