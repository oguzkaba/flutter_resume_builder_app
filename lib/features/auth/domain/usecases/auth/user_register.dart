import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/auth/domain/entities/user_details_entity.dart';
import 'package:fixresume/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserRegister implements UseCase<UserDetailsEntity, UserRegisterParams> {
  const UserRegister(this.authRepository);
  final AuthRepository authRepository;

  @override
  Future<Either<Failure, UserDetailsEntity>> call(
    UserRegisterParams params,
  ) async {
    return authRepository.registerWithEmailPassword(
      email: params.email,
      password: params.password,
    );
  }
}

class UserRegisterParams {
  UserRegisterParams({
    required this.email,
    required this.password,
  });
  final String email;
  final String password;
}
