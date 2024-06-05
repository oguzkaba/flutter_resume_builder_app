import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserLogout implements UseCase<void, NoParams> {
  UserLogout(this.authRepository);
  final AuthRepository authRepository;

  @override
  Future<Either<Failure, void>> call(NoParams params) async {
    return authRepository.logout();
  }
}
