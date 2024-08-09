part of 'account_type_bloc.dart';

@freezed
class AccountTypeEvent with _$AccountTypeEvent {
  const factory AccountTypeEvent.getAccountType({
    required AccountTypeEnum accountTypeEnum,
  }) = _GetAccountType;
}
