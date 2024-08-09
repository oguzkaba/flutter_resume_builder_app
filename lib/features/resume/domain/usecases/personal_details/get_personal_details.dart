import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/sections/personal_details_entity.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetPersonalDetails implements UseCase<PersonalDetailsEntity, NoParams> {
  GetPersonalDetails(this.repository);
  final ResumeRepository repository;

  @override
  Future<Either<Failure, PersonalDetailsEntity>> call(NoParams params) async {
    return repository.getPersonalDetails();
  }
}
