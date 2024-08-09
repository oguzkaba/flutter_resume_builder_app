import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/sections/experiences_entity.dart';

import 'package:fixresume/features/resume/domain/usecases/experiences/add_experiences.dart';
import 'package:fixresume/features/resume/domain/usecases/experiences/delete_experiences.dart';
import 'package:fixresume/features/resume/domain/usecases/experiences/get_experiences.dart';
import 'package:fixresume/features/resume/domain/usecases/experiences/update_experiences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'experiences_event.dart';
part 'experiences_state.dart';
part 'experiences_bloc.freezed.dart';

@lazySingleton
class ExperiencesBloc extends Bloc<ExperiencesEvent, ExperiencesState> {
  ExperiencesBloc({
    required GetExperiences getExperiences,
    required AddExperiences addExperiences,
    required UpdateExperiences updateExperiences,
    required DeleteExperiences deleteExperiences,
  })  : _getExperiences = getExperiences,
        _addExperiences = addExperiences,
        _updateExperiences = updateExperiences,
        _deleteExperiences = deleteExperiences,
        super(const ExperiencesState.initial()) {
    on<_GetExperiences>(_onGetExperiences);
    on<_AddExperiences>(_onAddExperiences);
    on<_UpdateExperiences>(_onUpdateExperiences);
    on<_DeleteExperiences>(_onDeleteExperiences);
  }

  final GetExperiences _getExperiences;
  final AddExperiences _addExperiences;
  final UpdateExperiences _updateExperiences;
  final DeleteExperiences _deleteExperiences;

  Future<void> _onGetExperiences(
    _GetExperiences event,
    Emitter<ExperiencesState> emit,
  ) async {
    emit(const ExperiencesState.experiencesLoading());
    final res = await _getExperiences(NoParams());

    res.fold(
      (l) => emit(ExperiencesState.experiencesFailure(l.errorMessage)),
      (r) => emit(ExperiencesState.experiencesSuccess(r)),
    );
  }

  Future<void> _onAddExperiences(
    _AddExperiences event,
    Emitter<ExperiencesState> emit,
  ) async {
    emit(const ExperiencesState.experiencesLoading());
    final res = await _addExperiences(event.experiencesEntity);

    res.fold(
      (l) => emit(ExperiencesState.experiencesFailure(l.errorMessage)),
      (r) =>
          emit(const ExperiencesState.successOnlyMessage('Experiences added')),
    );
  }

  Future<void> _onUpdateExperiences(
    _UpdateExperiences event,
    Emitter<ExperiencesState> emit,
  ) async {
    emit(const ExperiencesState.experiencesLoading());
    final res = await _updateExperiences(event.experiencesEntity);

    res.fold(
      (l) => emit(ExperiencesState.experiencesFailure(l.errorMessage)),
      (r) => emit(
        const ExperiencesState.successOnlyMessage('Experiences updated'),
      ),
    );
  }

  Future<void> _onDeleteExperiences(
    _DeleteExperiences event,
    Emitter<ExperiencesState> emit,
  ) async {
    emit(const ExperiencesState.experiencesLoading());
    final res = await _deleteExperiences(ExperiencesParams(id: event.id));

    res.fold(
      (l) => emit(ExperiencesState.experiencesFailure(l.errorMessage)),
      (r) => emit(
        const ExperiencesState.successOnlyMessage('Experiences deleted'),
      ),
    );
  }
}
