import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteResumes implements UseCase<void, ResumesParams> {
  DeleteResumes(this.repository);

  final ResumeRepository repository;

  @override
  Future<Either<Failure, void>> call(ResumesParams params) async {
    return repository.deleteResumes(id: params.id);
  }
}

class ResumesParams {
  ResumesParams({required this.id});
  final int id;
}
