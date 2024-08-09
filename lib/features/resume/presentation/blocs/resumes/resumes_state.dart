part of 'resumes_bloc.dart';

@freezed
class ResumesState with _$ResumesState {
  /// Resumes
  const factory ResumesState.initial() = _Initial;

  const factory ResumesState.resumesLoading() = _ResumesLoading;
  const factory ResumesState.resumesSuccess(List<ResumesEntity> resumes) =
      _ResumesSuccess;
  const factory ResumesState.successOnlyMessage(String successMessage) =
      _SuccessOnlyMessage;
  const factory ResumesState.resumesFailure(String message) = _ResumesFailure;
}
