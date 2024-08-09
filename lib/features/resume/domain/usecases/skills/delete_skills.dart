import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteSkills implements UseCase<void, SkillsParams> {
  DeleteSkills(this.repository);

  final ResumeRepository repository;

  @override
  Future<Either<Failure, void>> call(SkillsParams params) async {
    return repository.deleteSkills(id: params.id);
  }
}

class SkillsParams {
  SkillsParams({required this.id});
  final int id;
}
