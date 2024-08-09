import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/sections/educations_entity.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddEducations implements UseCase<void, EducationsEntity> {
  AddEducations(this.repository);
  final ResumeRepository repository;

  @override
  Future<Either<Failure, void>> call(EducationsEntity params) async {
    return repository.addEducations(educationsEntity: params);
  }
}