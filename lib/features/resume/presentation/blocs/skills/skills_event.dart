part of 'skills_bloc.dart';

@freezed
class SkillsEvent with _$SkillsEvent {
  /// Skills
  const factory SkillsEvent.getSkills() = _GetSkills;
  const factory SkillsEvent.addSkills(SkillsEntity skillsEntity) = _AddSkills;
  const factory SkillsEvent.updateSkills(SkillsEntity skillsEntity) =
      _UpdateSkills;
  const factory SkillsEvent.deleteSkills(int id) = _DeleteSkills;
}
