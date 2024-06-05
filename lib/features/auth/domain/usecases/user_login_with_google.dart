import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/auth/domain/entities/user_details_entity.dart';
import 'package:fixresume/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserLoginWithGoogle implements UseCase<UserDetailsEntity, NoParams> {
  const UserLoginWithGoogle(this.authRepository);
  final AuthRepository authRepository;

  @override
  Future<Either<Failure, UserDetailsEntity>> call(NoParams params) {
    return authRepository.loginWithGoogle();
  }
}