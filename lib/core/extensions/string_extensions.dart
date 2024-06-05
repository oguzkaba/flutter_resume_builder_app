import 'package:easy_localization/easy_localization.dart';

extension StringExtensions on String {
  String get capitalize => split(' ')
      .map((str) => '${str[0].toUpperCase()}${str.substring(1)}')
      .join(' ');
  String get locale => this.tr();
  String localeArgs(List<String> args) => this.tr(args: args);
  String localeNamedArgs(Map<String, String> namedArgs) =>
      this.tr(namedArgs: namedArgs);
}
