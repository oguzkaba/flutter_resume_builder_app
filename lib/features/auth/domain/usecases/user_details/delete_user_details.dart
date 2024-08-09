import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteUserDetails implements UseCase<void, DeleteUserDetailsParams> {
  DeleteUserDetails(this.authRepository);
  final AuthRepository authRepository;
  @override
  Future<Either<Failure, void>> call(
    DeleteUserDetailsParams params,
  ) {
    return authRepository.deleteUserDetails(
      id: params.id,
    );
  }
}

class DeleteUserDetailsParams {
  DeleteUserDetailsParams({
    required this.id,
  });
  final int id;
}
