part of 'personal_details_bloc.dart';

@freezed
class PersonalDetailsEvent with _$PersonalDetailsEvent {
  /// PersonalDetails
  const factory PersonalDetailsEvent.getPersonalDetails() = _GetPersonalDetails;
  const factory PersonalDetailsEvent.addPersonalDetails(
    PersonalDetailsEntity personalDetailsEntity,
  ) = _AddPersonalDetails;
  const factory PersonalDetailsEvent.updatePersonalDetails(
    PersonalDetailsEntity personalDetailsEntity,
  ) = _UpdatePersonalDetails;
  const factory PersonalDetailsEvent.deletePersonalDetails(int id) =
      _DeletePersonalDetails;
}
