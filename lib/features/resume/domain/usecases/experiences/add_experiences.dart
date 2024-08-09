import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/sections/experiences_entity.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddExperiences implements UseCase<void, ExperiencesEntity> {
  AddExperiences(this.repository);
  final ResumeRepository repository;

  @override
  Future<Either<Failure, void>> call(ExperiencesEntity params) async {
    return repository.addExperiences(experiencesEntity: params);
  }
}
