import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/sections/educations_entity.dart';

import 'package:fixresume/features/resume/domain/usecases/educations/add_educations.dart';
import 'package:fixresume/features/resume/domain/usecases/educations/delete_educations.dart';
import 'package:fixresume/features/resume/domain/usecases/educations/get_educations.dart';
import 'package:fixresume/features/resume/domain/usecases/educations/update_educations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'educations_event.dart';
part 'educations_state.dart';
part 'educations_bloc.freezed.dart';

@lazySingleton
class EducationsBloc extends Bloc<EducationsEvent, EducationsState> {
  EducationsBloc({
    required GetEducations getEducations,
    required AddEducations addEducations,
    required UpdateEducations updateEducations,
    required DeleteEducations deleteEducations,
  })  : _getEducations = getEducations,
        _addEducations = addEducations,
        _updateEducations = updateEducations,
        _deleteEducations = deleteEducations,
        super(const EducationsState.initial()) {
    on<_GetEducations>(_onGetEducations);
    on<_AddEducations>(_onAddEducations);
    on<_UpdateEducations>(_onUpdateEducations);
    on<_DeleteEducations>(_onDeleteEducations);
  }

  final GetEducations _getEducations;
  final AddEducations _addEducations;
  final UpdateEducations _updateEducations;
  final DeleteEducations _deleteEducations;

  Future<void> _onGetEducations(
    _GetEducations event,
    Emitter<EducationsState> emit,
  ) async {
    emit(const EducationsState.educationsLoading());
    final res = await _getEducations(NoParams());

    res.fold(
      (l) => emit(EducationsState.educationsFailure(l.errorMessage)),
      (r) => emit(EducationsState.educationsSuccess(r)),
    );
  }

  Future<void> _onAddEducations(
    _AddEducations event,
    Emitter<EducationsState> emit,
  ) async {
    emit(const EducationsState.educationsLoading());
    final res = await _addEducations(event.educationsEntity);

    res.fold(
      (l) => emit(EducationsState.educationsFailure(l.errorMessage)),
      (r) => emit(const EducationsState.successOnlyMessage('Educations added')),
    );
  }

  Future<void> _onUpdateEducations(
    _UpdateEducations event,
    Emitter<EducationsState> emit,
  ) async {
    emit(const EducationsState.educationsLoading());
    final res = await _updateEducations(event.educationsEntity);

    res.fold(
      (l) => emit(EducationsState.educationsFailure(l.errorMessage)),
      (r) =>
          emit(const EducationsState.successOnlyMessage('Educations updated')),
    );
  }

  Future<void> _onDeleteEducations(
    _DeleteEducations event,
    Emitter<EducationsState> emit,
  ) async {
    emit(const EducationsState.educationsLoading());
    final res = await _deleteEducations(EducationsParams(id: event.id));

    res.fold(
      (l) => emit(EducationsState.educationsFailure(l.errorMessage)),
      (r) =>
          emit(const EducationsState.successOnlyMessage('Educations deleted')),
    );
  }
}
