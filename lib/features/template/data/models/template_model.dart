// ignore_for_file: public_member_api_docs

import 'package:flutter_resume_builder_app/features/template/domain/entities/template_entity.dart';

class TemplateModel extends TemplateEntity {
  const TemplateModel({
    required super.template,
  });

  factory TemplateModel.fromJson({required Map<String, dynamic> json}) {
    return TemplateModel(
      template: json['template'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      template: template,
    };
  }
}
