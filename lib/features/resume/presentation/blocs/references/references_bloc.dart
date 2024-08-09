import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/sections/references_entity.dart';

import 'package:fixresume/features/resume/domain/usecases/references/add_references.dart';
import 'package:fixresume/features/resume/domain/usecases/references/delete_references.dart';
import 'package:fixresume/features/resume/domain/usecases/references/get_references.dart';
import 'package:fixresume/features/resume/domain/usecases/references/update_references.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'references_event.dart';
part 'references_state.dart';
part 'references_bloc.freezed.dart';

@lazySingleton
class ReferencesBloc extends Bloc<ReferencesEvent, ReferencesState> {
  ReferencesBloc({
    required GetReferences getReferences,
    required AddReferences addReferences,
    required UpdateReferences updateReferences,
    required DeleteReferences deleteReferences,
  })  : _getReferences = getReferences,
        _addReferences = addReferences,
        _updateReferences = updateReferences,
        _deleteReferences = deleteReferences,
        super(const ReferencesState.initial()) {
    on<_GetReferences>(_onGetReferences);
    on<_AddReferences>(_onAddReferences);
    on<_UpdateReferences>(_onUpdateReferences);
    on<_DeleteReferences>(_onDeleteReferences);
  }

  final GetReferences _getReferences;
  final AddReferences _addReferences;
  final UpdateReferences _updateReferences;
  final DeleteReferences _deleteReferences;

  Future<void> _onGetReferences(
    _GetReferences event,
    Emitter<ReferencesState> emit,
  ) async {
    emit(const ReferencesState.referencesLoading());
    final res = await _getReferences(NoParams());

    res.fold(
      (l) => emit(ReferencesState.referencesFailure(l.errorMessage)),
      (r) => emit(ReferencesState.referencesSuccess(r)),
    );
  }

  Future<void> _onAddReferences(
    _AddReferences event,
    Emitter<ReferencesState> emit,
  ) async {
    emit(const ReferencesState.referencesLoading());
    final res = await _addReferences(event.referencesEntity);

    res.fold(
      (l) => emit(ReferencesState.referencesFailure(l.errorMessage)),
      (r) => emit(const ReferencesState.successOnlyMessage('References added')),
    );
  }

  Future<void> _onUpdateReferences(
    _UpdateReferences event,
    Emitter<ReferencesState> emit,
  ) async {
    emit(const ReferencesState.referencesLoading());
    final res = await _updateReferences(event.referencesEntity);

    res.fold(
      (l) => emit(ReferencesState.referencesFailure(l.errorMessage)),
      (r) =>
          emit(const ReferencesState.successOnlyMessage('References updated')),
    );
  }

  Future<void> _onDeleteReferences(
    _DeleteReferences event,
    Emitter<ReferencesState> emit,
  ) async {
    emit(const ReferencesState.referencesLoading());
    final res = await _deleteReferences(ReferencesParams(id: event.id));

    res.fold(
      (l) => emit(ReferencesState.referencesFailure(l.errorMessage)),
      (r) =>
          emit(const ReferencesState.successOnlyMessage('References deleted')),
    );
  }
}
