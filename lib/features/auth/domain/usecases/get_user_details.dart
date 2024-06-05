import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/auth/domain/entities/user_details_entity.dart';
import 'package:fixresume/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserDetails implements UseCase<UserDetailsEntity, UserDetailsParams> {
  GetUserDetails(this.authRepository);
  final AuthRepository authRepository;

  @override
  Future<Either<Failure, UserDetailsEntity>> call(
    UserDetailsParams params,
  ) async {
    return authRepository.getUserDetails();
  }
}

class UserDetailsParams {
  UserDetailsParams({
    required this.userId,
  });
  final String userId;
}
