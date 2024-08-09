part of 'experiences_bloc.dart';

@freezed
class ExperiencesEvent with _$ExperiencesEvent {
  /// Experiences
  const factory ExperiencesEvent.getExperiences() = _GetExperiences;
  const factory ExperiencesEvent.addExperiences(
    ExperiencesEntity experiencesEntity,
  ) = _AddExperiences;
  const factory ExperiencesEvent.updateExperiences(
    ExperiencesEntity experiencesEntity,
  ) = _UpdateExperiences;
  const factory ExperiencesEvent.deleteExperiences(int id) = _DeleteExperiences;
}
