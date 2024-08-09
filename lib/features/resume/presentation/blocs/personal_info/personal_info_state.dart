part of 'personal_info_bloc.dart';

@freezed
class PersonalInfoState with _$PersonalInfoState {
  /// PersonalInfo
  const factory PersonalInfoState.initial() = _Initial;
  const factory PersonalInfoState.personalInfoLoading() = _PersonalInfoLoading;
  const factory PersonalInfoState.personalInfoSuccess(
    PersonalInfoEntity personalInfo,
  ) = PersonalInfoSuccess;
  const factory PersonalInfoState.successOnlyMessage(String successMessage) =
      _SuccessOnlyMessage;
  const factory PersonalInfoState.personalInfoFailure(String message) =
      _PersonalInfoFailure;
}
