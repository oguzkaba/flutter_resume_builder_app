import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeletePersonalInfo implements UseCase<void, PersonalInfoParams> {
  DeletePersonalInfo(this.repository);

  final ResumeRepository repository;

  @override
  Future<Either<Failure, void>> call(PersonalInfoParams params) async {
    return repository.deletePersonalInfo(id: params.id);
  }
}

class PersonalInfoParams {
  PersonalInfoParams({required this.id});
  final int id;
}
