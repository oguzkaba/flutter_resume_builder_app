import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/auth/domain/entities/user_details_entity.dart';
import 'package:fixresume/features/auth/domain/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserLoginWithApple
    implements UseCase<UserDetailsEntity, UserLoginWithAppleParams> {
  const UserLoginWithApple(this.authRepository);
  final AuthRepository authRepository;

  @override
  Future<Either<Failure, UserDetailsEntity>> call(
    UserLoginWithAppleParams params,
  ) async {
    return authRepository.loginWithApple(params.context);
  }
}

class UserLoginWithAppleParams {
  UserLoginWithAppleParams(this.context);
  final BuildContext context;
}
