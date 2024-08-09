import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/sections/personal_info_entity.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdatePersonalInfo implements UseCase<void, PersonalInfoEntity> {
  UpdatePersonalInfo(this.repository);

  final ResumeRepository repository;

  @override
  Future<Either<Failure, void>> call(PersonalInfoEntity params) async {
    return repository.updatePersonalInfo(personalInfoEntity: params);
  }
}
