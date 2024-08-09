import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteExperiences implements UseCase<void, ExperiencesParams> {
  DeleteExperiences(this.repository);

  final ResumeRepository repository;

  @override
  Future<Either<Failure, void>> call(ExperiencesParams params) async {
    return repository.deleteExperiences(id: params.id);
  }
}

class ExperiencesParams {
  ExperiencesParams({required this.id});
  final int id;
}
