import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

extension StringExtensions on String {
  String get capitalize => split(' ')
      .map((str) => '${str[0].toUpperCase()}${str.substring(1)}')
      .join(' ');
  String locale(BuildContext? context) => this.tr(context: context);
  String localeArgs(BuildContext context, List<String> args) =>
      this.tr(args: args, context: context);
  String localeNamedArgs(BuildContext context, Map<String, String> namedArgs) =>
      this.tr(namedArgs: namedArgs, context: context);
}
