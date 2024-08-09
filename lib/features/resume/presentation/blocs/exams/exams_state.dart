part of 'exams_bloc.dart';

@freezed
class ExamsState with _$ExamsState {
  /// Exams
  const factory ExamsState.initial() = _Initial;
  const factory ExamsState.examsLoading() = _ExamsLoading;
  const factory ExamsState.examsSuccess(List<ExamsEntity> exams) = ExamsSuccess;
  const factory ExamsState.successOnlyMessage(String successMessage) =
      _SuccessOnlyMessage;
  const factory ExamsState.examsFailure(String message) = _ExamsFailure;
}
