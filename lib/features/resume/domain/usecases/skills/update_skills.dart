import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/sections/skills_entity.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateSkills implements UseCase<void, SkillsEntity> {
  UpdateSkills(this.repository);

  final ResumeRepository repository;

  @override
  Future<Either<Failure, void>> call(SkillsEntity params) async {
    return repository.updateSkills(skillsEntity: params);
  }
}
