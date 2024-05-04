// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LanguageEntityImpl _$$LanguageEntityImplFromJson(Map<String, dynamic> json) =>
    _$LanguageEntityImpl(
      languageName: json['languageName'] as String?,
      languageLevel:
          $enumDecodeNullable(_$LanguageLevelEnumMap, json['languageLevel']),
      isNative: json['isNative'] as bool?,
    );

Map<String, dynamic> _$$LanguageEntityImplToJson(
        _$LanguageEntityImpl instance) =>
    <String, dynamic>{
      'languageName': instance.languageName,
      'languageLevel': _$LanguageLevelEnumMap[instance.languageLevel],
      'isNative': instance.isNative,
    };

const _$LanguageLevelEnumMap = {
  LanguageLevel.beginner: 'beginner',
  LanguageLevel.intermediate: 'intermediate',
  LanguageLevel.advanced: 'advanced',
  LanguageLevel.expert: 'expert',
};
