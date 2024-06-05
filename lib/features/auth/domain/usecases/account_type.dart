import 'package:dartz/dartz.dart';
import 'package:fixresume/core/enums/account_type_enum.dart';
import 'package:fixresume/core/errors/failure.dart';
import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/auth/domain/entities/account_type_entity.dart';
import 'package:fixresume/features/auth/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AccountType implements UseCase<AccountTypeEntity, AccountTypeParams> {
  AccountType(this.authRepository);
  final AuthRepository authRepository;
  @override
  Future<Either<Failure, AccountTypeEntity>> call(AccountTypeParams params) {
    return authRepository.getAccountType(accTypeEnum: params.accountTypeEnum);
  }
}

class AccountTypeParams {
  AccountTypeParams({
    required this.accountTypeEnum,
  });
  final AccountTypeEnum accountTypeEnum;
}
