import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteSubscriptions implements UseCase<void, DeleteSubscriptionsParams> {
  DeleteSubscriptions(this.authRepository);
  final AuthRepository authRepository;
  @override
  Future<Either<Failure, void>> call(
    DeleteSubscriptionsParams params,
  ) {
    return authRepository.deleteSubscriptions(
      id: params.id,
    );
  }
}

class DeleteSubscriptionsParams {
  DeleteSubscriptionsParams({
    required this.id,
  });
  final int id;
}
