import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/sections/social_accounts_entity.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateSocialAccounts implements UseCase<void, SocialAccountsEntity> {
  UpdateSocialAccounts(this.repository);

  final ResumeRepository repository;

  @override
  Future<Either<Failure, void>> call(SocialAccountsEntity params) async {
    return repository.updateSocialAccounts(socialAccountsEntity: params);
  }
}
