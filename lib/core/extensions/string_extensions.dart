// ignore_for_file: public_member_api_docs

import 'package:easy_localization/easy_localization.dart';

extension StringExtensions on String {
  String get capitalize => split(' ')
      .map((str) => '${str[0].toUpperCase()}${str.substring(1)}')
      .join(' ');
  String get locale => this.tr();
}
