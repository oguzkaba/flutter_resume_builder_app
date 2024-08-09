import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteReferences implements UseCase<void, ReferencesParams> {
  DeleteReferences(this.repository);

  final ResumeRepository repository;

  @override
  Future<Either<Failure, void>> call(ReferencesParams params) async {
    return repository.deleteReferences(id: params.id);
  }
}

class ReferencesParams {
  ReferencesParams({required this.id});
  final int id;
}
