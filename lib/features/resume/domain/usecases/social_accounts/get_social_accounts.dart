import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/sections/social_accounts_entity.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSocialAccounts
    implements UseCase<List<SocialAccountsEntity>, NoParams> {
  GetSocialAccounts(this.repository);
  final ResumeRepository repository;

  @override
  Future<Either<Failure, List<SocialAccountsEntity>>> call(
    NoParams params,
  ) async {
    return repository.getSocialAccounts();
  }
}
