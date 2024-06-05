import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/auth/domain/entities/subscriptions_entity.dart';
import 'package:fixresume/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSubscriptions
    implements UseCase<SubscriptionsEntity?, GetSubscriptionsParams> {
  GetSubscriptions(this.authRepository);
  final AuthRepository authRepository;
  @override
  Future<Either<Failure, SubscriptionsEntity?>> call(
    GetSubscriptionsParams params,
  ) {
    return authRepository.getSubscriptions(userId: params.userId);
  }
}

class GetSubscriptionsParams {
  GetSubscriptionsParams({
    required this.userId,
  });
  final String userId;
}
