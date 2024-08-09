import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/sections/skills_entity.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSkills implements UseCase<List<SkillsEntity>, NoParams> {
  GetSkills(this.repository);
  final ResumeRepository repository;

  @override
  Future<Either<Failure, List<SkillsEntity>>> call(NoParams params) async {
    return repository.getSkills();
  }
}
