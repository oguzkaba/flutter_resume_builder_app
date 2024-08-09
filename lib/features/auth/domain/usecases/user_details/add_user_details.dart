import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/auth/domain/entities/user_details_entity.dart';
import 'package:fixresume/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddUserDetails implements UseCase<void, AddUserDetailsParams> {
  AddUserDetails(this.authRepository);
  final AuthRepository authRepository;

  @override
  Future<Either<Failure, void>> call(
    AddUserDetailsParams params,
  ) async {
    return authRepository.addUserDetails(
      userDetailsEntity: params.userDetailsEntity,
    );
  }
}

class AddUserDetailsParams {
  AddUserDetailsParams({
    required this.userDetailsEntity,
  });
  final UserDetailsEntity userDetailsEntity;
}
