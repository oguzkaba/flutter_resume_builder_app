import 'package:fixresume/core/extensions/context_extension.dart';
import 'package:fixresume/core/extensions/string_extensions.dart';
import 'package:fixresume/core/init/lang/locale_keys.g.dart';
import 'package:flutter/material.dart';

/// A mixin class that contains validation methods for email and password.
mixin ValidatorMixin {
  /// Validates the email.
  String? validateEmail(BuildContext context, String? value) {
    if (value!.isEmpty) {
      return LocaleKeys.error_emailEmpty.locale(context);
    }
    if (!context.isEmail(value)) {
      return LocaleKeys.error_emailInvalid.locale(context);
    }
    return null;
  }

  /// Validates the password.
  String? validatePassword(BuildContext context, String? value) {
    if (value!.isEmpty) {
      return LocaleKeys.error_passEmpty.locale(context);
    }
    if (value.length < 6) {
      return LocaleKeys.error_passShort.locale(context);
    }

    return null;
  }
}
