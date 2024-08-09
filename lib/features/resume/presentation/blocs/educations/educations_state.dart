part of 'educations_bloc.dart';

@freezed
class EducationsState with _$EducationsState {
  /// Educations
  const factory EducationsState.initial() = _Initial;
  const factory EducationsState.educationsLoading() = _EducationsLoading;
  const factory EducationsState.educationsSuccess(
    List<EducationsEntity> educations,
  ) = EducationsSuccess;
  const factory EducationsState.successOnlyMessage(String successMessage) =
      _SuccessOnlyMessage;
  const factory EducationsState.educationsFailure(String message) =
      _EducationsFailure;
}
