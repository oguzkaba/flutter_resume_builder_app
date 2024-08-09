import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/sections/references_entity.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddReferences implements UseCase<void, ReferencesEntity> {
  AddReferences(this.repository);
  final ResumeRepository repository;

  @override
  Future<Either<Failure, void>> call(ReferencesEntity params) async {
    return repository.addReferences(referencesEntity: params);
  }
}
