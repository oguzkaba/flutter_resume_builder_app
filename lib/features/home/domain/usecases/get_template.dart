// ignore_for_file: public_member_api_docs, unnecessary_await_in_return

import 'package:dartz/dartz.dart';

import 'package:flutter_resume_builder_app/core/errors/failure.dart';
import 'package:flutter_resume_builder_app/features/template/domain/entities/template_entity.dart';
import 'package:flutter_resume_builder_app/features/template/domain/repositories/template_repository.dart';

class GetTemplate {
  GetTemplate({required this.templateRepository});
  final TemplateRepository templateRepository;

  Future<Either<Failure, TemplateEntity>> call() async {
    return await templateRepository.getTemplate();
  }
}
