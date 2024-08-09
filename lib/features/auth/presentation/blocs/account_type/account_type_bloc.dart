import 'package:fixresume/core/enums/account_type_enum.dart';
import 'package:fixresume/features/auth/domain/entities/account_type_entity.dart';
import 'package:fixresume/features/auth/domain/usecases/account_type/get_account_type.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'account_type_bloc.freezed.dart';
part 'account_type_event.dart';
part 'account_type_state.dart';

@lazySingleton
class AccountTypeBloc extends Bloc<AccountTypeEvent, AccountTypeState> {
  AccountTypeBloc({
    required GetAccountType getAccountType,
  })  : _getAccountType = getAccountType,
        super(const AccountTypeState.initial()) {
    on<AccountTypeEvent>(
      (_, emit) => emit(const AccountTypeState.loading()),
    );

    on<_GetAccountType>(_onGetAccountType);
  }

  final GetAccountType _getAccountType;

  Future<void> _onGetAccountType(
    _GetAccountType event,
    Emitter<AccountTypeState> emit,
  ) async {
    final res = await _getAccountType(
      GetAccountTypeParams(accountTypeEnum: event.accountTypeEnum),
    );

    res.fold(
      (l) => emit(AccountTypeState.failure(l.errorMessage)),
      (r) => emit(AccountTypeState.successAccountType(r)),
    );
  }
}
