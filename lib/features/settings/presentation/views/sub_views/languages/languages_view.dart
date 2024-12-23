import 'package:easy_localization/easy_localization.dart';
import 'package:fixresume/core/enums/routes_enum.dart';
import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/extensions/string_extensions.dart';
import 'package:fixresume/core/init/di/dep_injection.dart';
import 'package:fixresume/core/init/lang/language_manager.dart';
import 'package:fixresume/core/init/lang/locale_keys.g.dart';
import 'package:fixresume/core/widgets/custom_coloredbox_column_widget.dart';
import 'package:fixresume/core/widgets/custom_dialog_appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// LanguagesView class is a StatelessWidget.
class LanguagesView extends StatelessWidget {
  /// constructor for the `LanguagesView` class.
  const LanguagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (value, _) {
        context.goNamed(RoutesEnum.settings.name);
      },
      child: Scaffold(
        appBar: CustomDialogAppBarWidget(
          title: LocaleKeys.settings_language_name.locale(context),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: _appLangSection(context),
        ),
      ),
    );
  }

  CustomColoredBoxColumnWidget _appLangSection(
    BuildContext context,
  ) {
    final langManager = getIt<LanguageManager>();

    return CustomColoredBoxColumnWidget(
      labelText: LocaleKeys.settings_language_title.locale(context),
      children: [
        Row(
          children: [
            ChoiceChip(
              label: Text(
                LocaleKeys.languages_en.locale(context),
              ),
              selected: context.locale == langManager.enLocale,
              onSelected: (value) => _setLocale(context, value, langManager),
            ),
            context.horizontalPaddingNormal,
            ChoiceChip(
              label: Text(
                LocaleKeys.languages_tr.locale(context),
              ),
              selected: context.locale == langManager.trLocale,
              onSelected: (value) => _setLocale(context, value, langManager),
            ),
          ],
        ),
      ],
    );
  }

  Future<void> _setLocale(
    BuildContext context,
    bool value,
    LanguageManager langManager,
  ) {
    return context.setLocale(
      context.locale.countryCode == 'US'
          ? langManager.trLocale
          : langManager.enLocale,
    );
  }
}
