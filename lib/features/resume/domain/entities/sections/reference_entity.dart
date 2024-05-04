// ignore_for_file: public_member_api_docs

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reference_entity.freezed.dart';
part 'reference_entity.g.dart';

ReferenceEntity referenceEntityFromJson(String str) =>
    ReferenceEntity.fromJson(json.decode(str) as Map<String, dynamic>);

String referenceEntityToJson(ReferenceEntity data) =>
    json.encode(data.toJson());

@freezed
class ReferenceEntity with _$ReferenceEntity {
  const factory ReferenceEntity({
    required String referenceName,
    required String referenceLastName,
    required String referenceTitle,
    required String referenceCompany,
    required String referencePhone,
    required String referenceEmail,
  }) = _ReferenceEntity;

  factory ReferenceEntity.fromJson(Map<String, dynamic> json) =>
      _$ReferenceEntityFromJson(json);
}
