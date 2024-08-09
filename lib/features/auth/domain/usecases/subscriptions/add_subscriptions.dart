import 'package:dartz/dartz.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddSubscriptions implements UseCase<void, AddSubscriptionsParams> {
  AddSubscriptions(this.authRepository);
  final AuthRepository authRepository;
  @override
  Future<Either<Failure, void>> call(
    AddSubscriptionsParams params,
  ) {
    return authRepository.addSubscriptions(
      userId: params.userId,
      accType: params.accType,
    );
  }
}

class AddSubscriptionsParams {
  AddSubscriptionsParams({
    required this.userId,
    required this.accType,
  });
  final String userId;
  final String accType;
}
