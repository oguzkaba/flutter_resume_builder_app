import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/sections/exams_entity.dart';

import 'package:fixresume/features/resume/domain/usecases/exams/add_exams.dart';
import 'package:fixresume/features/resume/domain/usecases/exams/delete_exams.dart';
import 'package:fixresume/features/resume/domain/usecases/exams/get_exams.dart';
import 'package:fixresume/features/resume/domain/usecases/exams/update_exams.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'exams_event.dart';
part 'exams_state.dart';
part 'exams_bloc.freezed.dart';

@lazySingleton
class ExamsBloc extends Bloc<ExamsEvent, ExamsState> {
  ExamsBloc({
    required GetExams getExams,
    required AddExams addExams,
    required UpdateExams updateExams,
    required DeleteExams deleteExams,
  })  : _getExams = getExams,
        _addExams = addExams,
        _updateExams = updateExams,
        _deleteExams = deleteExams,
        super(const ExamsState.initial()) {
    on<_GetExams>(_onGetExams);
    on<_AddExams>(_onAddExams);
    on<_UpdateExams>(_onUpdateExams);
    on<_DeleteExams>(_onDeleteExams);
  }

  final GetExams _getExams;
  final AddExams _addExams;
  final UpdateExams _updateExams;
  final DeleteExams _deleteExams;

  Future<void> _onGetExams(
    _GetExams event,
    Emitter<ExamsState> emit,
  ) async {
    emit(const ExamsState.examsLoading());
    final res = await _getExams(NoParams());

    res.fold(
      (l) => emit(ExamsState.examsFailure(l.errorMessage)),
      (r) => emit(ExamsState.examsSuccess(r)),
    );
  }

  Future<void> _onAddExams(
    _AddExams event,
    Emitter<ExamsState> emit,
  ) async {
    emit(const ExamsState.examsLoading());
    final res = await _addExams(event.examsEntity);

    res.fold(
      (l) => emit(ExamsState.examsFailure(l.errorMessage)),
      (r) => emit(const ExamsState.successOnlyMessage('Exams added')),
    );
  }

  Future<void> _onUpdateExams(
    _UpdateExams event,
    Emitter<ExamsState> emit,
  ) async {
    emit(const ExamsState.examsLoading());
    final res = await _updateExams(event.examsEntity);

    res.fold(
      (l) => emit(ExamsState.examsFailure(l.errorMessage)),
      (r) => emit(const ExamsState.successOnlyMessage('Exams updated')),
    );
  }

  Future<void> _onDeleteExams(
    _DeleteExams event,
    Emitter<ExamsState> emit,
  ) async {
    emit(const ExamsState.examsLoading());
    final res = await _deleteExams(ExamsParams(id: event.id));

    res.fold(
      (l) => emit(ExamsState.examsFailure(l.errorMessage)),
      (r) => emit(const ExamsState.successOnlyMessage('Exams deleted')),
    );
  }
}
