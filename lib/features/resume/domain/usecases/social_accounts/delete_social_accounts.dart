import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/repositories/resume_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteSocialAccounts implements UseCase<void, SocialAccountsParams> {
  DeleteSocialAccounts(this.repository);

  final ResumeRepository repository;

  @override
  Future<Either<Failure, void>> call(SocialAccountsParams params) async {
    return repository.deleteSocialAccounts(id: params.id);
  }
}

class SocialAccountsParams {
  SocialAccountsParams({required this.id});
  final int id;
}
