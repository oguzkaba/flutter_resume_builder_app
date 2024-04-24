// ignore_for_file: public_member_api_docs

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'certification_entity.freezed.dart';
part 'certification_entity.g.dart';

CertificationEntity certificationEntityFromJson(String str) =>
    CertificationEntity.fromJson(json.decode(str) as Map<String, dynamic>);

String certificationEntityToJson(CertificationEntity data) =>
    json.encode(data.toJson());

@freezed
class CertificationEntity with _$CertificationEntity {
  const factory CertificationEntity({
    required String certificateName,
    required String organization,
    required DateTime certificateDate,
    String? description,
  }) = _CertificationEntity;

  factory CertificationEntity.fromJson(Map<String, dynamic> json) =>
      _$CertificationEntityFromJson(json);
}
