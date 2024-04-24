// ignore_for_file: one_member_abstracts

import 'package:dartz/dartz.dart';
import 'package:flutter_resume_builder_app/core/errors/failure.dart';
import 'package:flutter_resume_builder_app/features/template/domain/entities/template_entity.dart';

// ignore: public_member_api_docs
abstract class TemplateRepository {
  /// Get the template from the data source
  Future<Either<Failure, TemplateEntity>> getTemplate();
}
