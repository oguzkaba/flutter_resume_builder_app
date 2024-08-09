import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/resumes_entity.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddResumes implements UseCase<void, ResumesEntity> {
  AddResumes(this.repository);
  final ResumeRepository repository;

  @override
  Future<Either<Failure, void>> call(ResumesEntity params) async {
    return repository.addResumes(resumesEntity: params);
  }
}
