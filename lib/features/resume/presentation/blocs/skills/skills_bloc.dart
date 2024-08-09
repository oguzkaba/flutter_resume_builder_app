import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/sections/skills_entity.dart';

import 'package:fixresume/features/resume/domain/usecases/skills/add_skills.dart';
import 'package:fixresume/features/resume/domain/usecases/skills/delete_skills.dart';
import 'package:fixresume/features/resume/domain/usecases/skills/get_skills.dart';
import 'package:fixresume/features/resume/domain/usecases/skills/update_skills.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'skills_event.dart';
part 'skills_state.dart';
part 'skills_bloc.freezed.dart';

@lazySingleton
class SkillsBloc extends Bloc<SkillsEvent, SkillsState> {
  SkillsBloc({
    required GetSkills getSkills,
    required AddSkills addSkills,
    required UpdateSkills updateSkills,
    required DeleteSkills deleteSkills,
  })  : _getSkills = getSkills,
        _addSkills = addSkills,
        _updateSkills = updateSkills,
        _deleteSkills = deleteSkills,
        super(const SkillsState.initial()) {
    on<_GetSkills>(_onGetSkills);
    on<_AddSkills>(_onAddSkills);
    on<_UpdateSkills>(_onUpdateSkills);
    on<_DeleteSkills>(_onDeleteSkills);
  }

  final GetSkills _getSkills;
  final AddSkills _addSkills;
  final UpdateSkills _updateSkills;
  final DeleteSkills _deleteSkills;

  Future<void> _onGetSkills(
    _GetSkills event,
    Emitter<SkillsState> emit,
  ) async {
    emit(const SkillsState.skillsLoading());
    final res = await _getSkills(NoParams());

    res.fold(
      (l) => emit(SkillsState.skillsFailure(l.errorMessage)),
      (r) => emit(SkillsState.skillsSuccess(r)),
    );
  }

  Future<void> _onAddSkills(
    _AddSkills event,
    Emitter<SkillsState> emit,
  ) async {
    emit(const SkillsState.skillsLoading());
    final res = await _addSkills(event.skillsEntity);

    res.fold(
      (l) => emit(SkillsState.skillsFailure(l.errorMessage)),
      (r) => emit(const SkillsState.successOnlyMessage('Skills added')),
    );
  }

  Future<void> _onUpdateSkills(
    _UpdateSkills event,
    Emitter<SkillsState> emit,
  ) async {
    emit(const SkillsState.skillsLoading());
    final res = await _updateSkills(event.skillsEntity);

    res.fold(
      (l) => emit(SkillsState.skillsFailure(l.errorMessage)),
      (r) => emit(const SkillsState.successOnlyMessage('Skills updated')),
    );
  }

  Future<void> _onDeleteSkills(
    _DeleteSkills event,
    Emitter<SkillsState> emit,
  ) async {
    emit(const SkillsState.skillsLoading());
    final res = await _deleteSkills(SkillsParams(id: event.id));

    res.fold(
      (l) => emit(SkillsState.skillsFailure(l.errorMessage)),
      (r) => emit(const SkillsState.successOnlyMessage('Skills deleted')),
    );
  }
}
