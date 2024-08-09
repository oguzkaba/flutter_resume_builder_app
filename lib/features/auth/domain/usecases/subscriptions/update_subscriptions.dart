import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateSubscriptions implements UseCase<void, UpdateSubscriptionsParams> {
  UpdateSubscriptions(this.authRepository);
  final AuthRepository authRepository;
  @override
  Future<Either<Failure, void>> call(
    UpdateSubscriptionsParams params,
  ) {
    return authRepository.updateSubscriptions(
      userId: params.userId,
      accType: params.accType,
    );
  }
}

class UpdateSubscriptionsParams {
  UpdateSubscriptionsParams({
    required this.userId,
    required this.accType,
  });
  final String userId;
  final String accType;
}
