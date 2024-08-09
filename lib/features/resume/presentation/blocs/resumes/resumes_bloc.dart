import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/resumes_entity.dart';
import 'package:fixresume/features/resume/domain/usecases/add_resumes.dart';
import 'package:fixresume/features/resume/domain/usecases/delete_resumes.dart';
import 'package:fixresume/features/resume/domain/usecases/get_resumes.dart';
import 'package:fixresume/features/resume/domain/usecases/update_resumes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'resumes_event.dart';
part 'resumes_state.dart';
part 'resumes_bloc.freezed.dart';

@lazySingleton
class ResumesBloc extends Bloc<ResumesEvent, ResumesState> {
  ResumesBloc({
    required GetResumes getResumes,
    required AddResumes addResumes,
    required UpdateResumes updateResumes,
    required DeleteResumes deleteResumes,
  })  : _getResumes = getResumes,
        _addResumes = addResumes,
        _updateResumes = updateResumes,
        _deleteResumes = deleteResumes,
        super(const ResumesState.initial()) {
    on<_GetResumes>(_onGetResumes);
    on<_AddResumes>(_onAddResumes);
    on<_UpdateResumes>(_onUpdateResumes);
    on<_DeleteResumes>(_onDeleteResumes);
  }

  final GetResumes _getResumes;
  final AddResumes _addResumes;
  final UpdateResumes _updateResumes;
  final DeleteResumes _deleteResumes;

  Future<void> _onGetResumes(
    _GetResumes event,
    Emitter<ResumesState> emit,
  ) async {
    final res = await _getResumes(NoParams());

    res.fold(
      (l) => emit(ResumesState.resumesFailure(l.errorMessage)),
      (r) => emit(ResumesState.resumesSuccess(r)),
    );
  }

  Future<void> _onAddResumes(
    _AddResumes event,
    Emitter<ResumesState> emit,
  ) async {
    emit(const ResumesState.resumesLoading());
    final res = await _addResumes(event.resumesEntity);

    res.fold(
      (l) => emit(ResumesState.resumesFailure(l.errorMessage)),
      (r) => emit(const ResumesState.successOnlyMessage('Resumes added')),
    );
  }

  Future<void> _onUpdateResumes(
    _UpdateResumes event,
    Emitter<ResumesState> emit,
  ) async {
    emit(const ResumesState.resumesLoading());
    final res = await _updateResumes(event.resumesEntity);

    res.fold(
      (l) => emit(ResumesState.resumesFailure(l.errorMessage)),
      (r) => emit(const ResumesState.successOnlyMessage('Resumes updated')),
    );
  }

  Future<void> _onDeleteResumes(
    _DeleteResumes event,
    Emitter<ResumesState> emit,
  ) async {
    emit(const ResumesState.resumesLoading());
    final res = await _deleteResumes(ResumesParams(id: event.id));

    res.fold(
      (l) => emit(ResumesState.resumesFailure(l.errorMessage)),
      (r) => emit(const ResumesState.successOnlyMessage('Resumes deleted')),
    );
  }
}
