part of 'references_bloc.dart';

@freezed
class ReferencesEvent with _$ReferencesEvent {
  /// References
  const factory ReferencesEvent.getReferences() = _GetReferences;
  const factory ReferencesEvent.addReferences(
    ReferencesEntity referencesEntity,
  ) = _AddReferences;
  const factory ReferencesEvent.updateReferences(
    ReferencesEntity referencesEntity,
  ) = _UpdateReferences;
  const factory ReferencesEvent.deleteReferences(int id) = _DeleteReferences;
}
