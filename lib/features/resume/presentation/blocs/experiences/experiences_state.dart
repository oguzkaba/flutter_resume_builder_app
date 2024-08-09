part of 'experiences_bloc.dart';

@freezed
class ExperiencesState with _$ExperiencesState {
  /// Experiences
  const factory ExperiencesState.initial() = _Initial;
  const factory ExperiencesState.experiencesLoading() = _ExperiencesLoading;
  const factory ExperiencesState.experiencesSuccess(
    List<ExperiencesEntity> experiences,
  ) = ExperiencesSuccess;
  const factory ExperiencesState.successOnlyMessage(String successMessage) =
      _SuccessOnlyMessage;
  const factory ExperiencesState.experiencesFailure(String message) =
      _ExperiencesFailure;
}
