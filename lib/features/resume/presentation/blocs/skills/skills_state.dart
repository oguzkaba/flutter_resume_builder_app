part of 'skills_bloc.dart';

@freezed
class SkillsState with _$SkillsState {
  /// Skills
  const factory SkillsState.initial() = _Initial;
  const factory SkillsState.skillsLoading() = _SkillsLoading;
  const factory SkillsState.skillsSuccess(List<SkillsEntity> skills) =
      SkillsSuccess;
  const factory SkillsState.successOnlyMessage(String successMessage) =
      _SuccessOnlyMessage;
  const factory SkillsState.skillsFailure(String message) = _SkillsFailure;
}
