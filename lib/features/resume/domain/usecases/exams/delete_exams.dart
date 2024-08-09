import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteExams implements UseCase<void, ExamsParams> {
  DeleteExams(this.repository);

  final ResumeRepository repository;

  @override
  Future<Either<Failure, void>> call(ExamsParams params) async {
    return repository.deleteExams(id: params.id);
  }
}

class ExamsParams {
  ExamsParams({required this.id});
  final int id;
}
