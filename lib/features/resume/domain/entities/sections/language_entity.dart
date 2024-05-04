// ignore_for_file: public_member_api_docs

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_entity.freezed.dart';
part 'language_entity.g.dart';

LanguageEntity languageEntityFromJson(String str) =>
    LanguageEntity.fromJson(json.decode(str) as Map<String, dynamic>);

String languageEntityToJson(LanguageEntity data) => json.encode(data.toJson());

enum LanguageLevel { beginner, intermediate, advanced, expert }

@freezed
class LanguageEntity with _$LanguageEntity {
  const factory LanguageEntity({
    String? languageName,
    LanguageLevel? languageLevel,
    bool? isNative,
  }) = _LanguageEntity;

  factory LanguageEntity.fromJson(Map<String, dynamic> json) =>
      _$LanguageEntityFromJson(json);
}
