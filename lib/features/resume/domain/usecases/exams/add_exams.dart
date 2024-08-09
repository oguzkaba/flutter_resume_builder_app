import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/sections/exams_entity.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddExams implements UseCase<void, ExamsEntity> {
  AddExams(this.repository);
  final ResumeRepository repository;

  @override
  Future<Either<Failure, void>> call(ExamsEntity params) async {
    return repository.addExams(examsEntity: params);
  }
}
