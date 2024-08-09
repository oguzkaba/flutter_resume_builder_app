import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/sections/personal_details_entity.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdatePersonalDetails implements UseCase<void, PersonalDetailsEntity> {
  UpdatePersonalDetails(this.repository);

  final ResumeRepository repository;

  @override
  Future<Either<Failure, void>> call(PersonalDetailsEntity params) async {
    return repository.updatePersonalDetails(personalDetailsEntity: params);
  }
}
