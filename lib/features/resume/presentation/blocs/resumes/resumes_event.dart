part of 'resumes_bloc.dart';

@freezed
class ResumesEvent with _$ResumesEvent {
  /// Resumes
  const factory ResumesEvent.getResumes() = _GetResumes;
  const factory ResumesEvent.addResumes(ResumesEntity resumesEntity) =
      _AddResumes;
  const factory ResumesEvent.updateResumes(ResumesEntity resumesEntity) =
      _UpdateResumes;
  const factory ResumesEvent.deleteResumes(int id) = _DeleteResumes;
}
