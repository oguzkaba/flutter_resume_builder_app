part of 'personal_details_bloc.dart';

@freezed
class PersonalDetailsState with _$PersonalDetailsState {
  /// PersonalDetails
  const factory PersonalDetailsState.initial() = _Initial;
  const factory PersonalDetailsState.personalDetailsLoading() =
      _PersonalDetailsLoading;
  const factory PersonalDetailsState.personalDetailsSuccess(
    PersonalDetailsEntity personalDetails,
  ) = PersonalDetailsSuccess;
  const factory PersonalDetailsState.successOnlyMessage(String successMessage) =
      _SuccessOnlyMessage;
  const factory PersonalDetailsState.personalDetailsFailure(String message) =
      _PersonalDetailsFailure;
}
