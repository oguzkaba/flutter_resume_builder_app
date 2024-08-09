part of 'educations_bloc.dart';

@freezed
class EducationsEvent with _$EducationsEvent {
  /// Educations
  const factory EducationsEvent.getEducations() = _GetEducations;
  const factory EducationsEvent.addEducations(
    EducationsEntity educationsEntity,
  ) = _AddEducations;
  const factory EducationsEvent.updateEducations(
    EducationsEntity educationsEntity,
  ) = _UpdateEducations;
  const factory EducationsEvent.deleteEducations(int id) = _DeleteEducations;
}
