import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_resume_builder_app/core/constants/app/color_constants.dart';
import 'package:flutter_resume_builder_app/core/extensions/context_extension.dart';
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
    

    return ValueListenableBuilder(
      valueListenable: resumeName,
      builder: (context, name, child) => Scaffold(
        appBar: _appBar(context, name),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _resumeNameSection(
                    context, resumeNameController, resumeName, name,),
                context.verticalPaddingSmall,
                _resumeLangSection(context, selectedLang),
                context.verticalPaddingSmall,
                Text(
                  'CreateResumeView',
                  style: context.blackBold,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ColoredBox _resumeNameSection(
      BuildContext context,
      TextEditingController resumeNameController,
      ValueNotifier<String> resumeName,
      String name,) {
    return ColoredBox(
      color: ColorConstants.myExtraLightGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Resume Name',
            style: context.blackBold,
          ),
          _customTextField(
            resumeNameController,
            resumeName,
            context,
            name,
          ),
        ],
      ),
    );
  }

  ColoredBox _resumeLangSection(
      BuildContext context, ValueNotifier<int> selectedLang,) {
    return ColoredBox(
      color: ColorConstants.myExtraLightGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Resume Language',
            style: context.blackBold,
          ),
          ValueListenableBuilder(
            valueListenable: selectedLang,
            builder: (_, __, ___) => Row(
              children: [
                ChoiceChip(
                  side: BorderSide(
                    color: selectedLang.value == 0
                        ? context.colorScheme.background
                        : ColorConstants.myLightGrey,
                  ),
                  label: Text(
                    'English',
                    style: context.body12BoldBlack,
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
                    'Turkish',
                    style: context.body12BoldBlack,
                  ),
                  selected: selectedLang.value == 1,
                  onSelected: (value) => selectedLang.value = 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appBar(BuildContext context, String name) {
    return AppBar(
      title: Text(
        'Create Resume',
        style: context.blackBold,
      ),
      centerTitle: true,
      actions: [
        if (name.isNotEmpty)
          TextButton(
            onPressed: () {
              log('Save Resume');
              context.pop();
            },
            child: Text(
              'Save',
              style: context.body14BoldPrimaryColor?.copyWith(
                decoration: TextDecoration.underline,
                decorationColor: ColorConstants.primaryColor,
                decorationThickness: 2,
              ),
            ),
          )
        else
          const SizedBox(),
      ],
    );
  }

  TextField _customTextField(
    TextEditingController resumeNameController,
    ValueNotifier<String> resumeName,
    BuildContext context,
    String name,
  ) {
    return TextField(
      controller: resumeNameController,
      onChanged: (value) {
        resumeName.value = value;
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 8),
        suffixIcon: name.isNotEmpty
            ? Icon(
                Icons.check_circle_outline,
                color: ColorConstants.primaryColor,
              )
            : null,
        border: InputBorder.none,
        filled: true,
        fillColor: ColorConstants.myExtraLightGrey,
        hintText: 'Please enter resume name',
      ),
    );
  }
}
