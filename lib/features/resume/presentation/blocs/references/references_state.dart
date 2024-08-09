part of 'references_bloc.dart';

@freezed
class ReferencesState with _$ReferencesState {
  /// References
  const factory ReferencesState.initial() = _Initial;
  const factory ReferencesState.referencesLoading() = _ReferencesLoading;
  const factory ReferencesState.referencesSuccess(
    List<ReferencesEntity> references,
  ) = ReferencesSuccess;
  const factory ReferencesState.successOnlyMessage(String successMessage) =
      _SuccessOnlyMessage;
  const factory ReferencesState.referencesFailure(String message) =
      _ReferencesFailure;
}
