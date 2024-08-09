part of 'exams_bloc.dart';

@freezed
class ExamsEvent with _$ExamsEvent {
  /// Exams
  const factory ExamsEvent.getExams() = _GetExams;
  const factory ExamsEvent.addExams(ExamsEntity examsEntity) = _AddExams;
  const factory ExamsEvent.updateExams(ExamsEntity examsEntity) = _UpdateExams;
  const factory ExamsEvent.deleteExams(int id) = _DeleteExams;
}
