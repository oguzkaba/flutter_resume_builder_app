import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteEducations implements UseCase<void, EducationsParams> {
  DeleteEducations(this.repository);

  final ResumeRepository repository;

  @override
  Future<Either<Failure, void>> call(EducationsParams params) async {
    return repository.deleteEducations(id: params.id);
  }
}

class EducationsParams {
  EducationsParams({required this.id});
  final int id;
}
