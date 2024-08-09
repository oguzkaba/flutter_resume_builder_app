import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeletePersonalDetails implements UseCase<void, PersonalDetailsParams> {
  DeletePersonalDetails(this.repository);

  final ResumeRepository repository;

  @override
  Future<Either<Failure, void>> call(PersonalDetailsParams params) async {
    return repository.deletePersonalDetails(id: params.id);
  }
}

class PersonalDetailsParams {
  PersonalDetailsParams({required this.id});
  final int id;
}
