part of 'personal_info_bloc.dart';

@freezed
class PersonalInfoEvent with _$PersonalInfoEvent {
  /// PersonalInfo
  const factory PersonalInfoEvent.getPersonalInfo() = _GetPersonalInfo;
  const factory PersonalInfoEvent.addPersonalInfo(
    PersonalInfoEntity personalInfoEntity,
  ) = _AddPersonalInfo;
  const factory PersonalInfoEvent.updatePersonalInfo(
    PersonalInfoEntity personalInfoEntity,
  ) = _UpdatePersonalInfo;
  const factory PersonalInfoEvent.deletePersonalInfo(int id) =
      _DeletePersonalInfo;
}
