import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/sections/personal_info_entity.dart';

import 'package:fixresume/features/resume/domain/usecases/personal_info/add_personal_info.dart';
import 'package:fixresume/features/resume/domain/usecases/personal_info/delete_personal_info.dart';
import 'package:fixresume/features/resume/domain/usecases/personal_info/get_personal_info.dart';
import 'package:fixresume/features/resume/domain/usecases/personal_info/update_personal_info.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'personal_info_event.dart';
part 'personal_info_state.dart';
part 'personal_info_bloc.freezed.dart';

@lazySingleton
class PersonalInfoBloc extends Bloc<PersonalInfoEvent, PersonalInfoState> {
  PersonalInfoBloc({
    required GetPersonalInfo getPersonalInfo,
    required AddPersonalInfo addPersonalInfo,
    required UpdatePersonalInfo updatePersonalInfo,
    required DeletePersonalInfo deletePersonalInfo,
  })  : _getPersonalInfo = getPersonalInfo,
        _addPersonalInfo = addPersonalInfo,
        _updatePersonalInfo = updatePersonalInfo,
        _deletePersonalInfo = deletePersonalInfo,
        super(const PersonalInfoState.initial()) {
    on<_GetPersonalInfo>(_onGetPersonalInfo);
    on<_AddPersonalInfo>(_onAddPersonalInfo);
    on<_UpdatePersonalInfo>(_onUpdatePersonalInfo);
    on<_DeletePersonalInfo>(_onDeletePersonalInfo);
  }

  final GetPersonalInfo _getPersonalInfo;
  final AddPersonalInfo _addPersonalInfo;
  final UpdatePersonalInfo _updatePersonalInfo;
  final DeletePersonalInfo _deletePersonalInfo;

  Future<void> _onGetPersonalInfo(
    _GetPersonalInfo event,
    Emitter<PersonalInfoState> emit,
  ) async {
    emit(const PersonalInfoState.personalInfoLoading());
    final res = await _getPersonalInfo(NoParams());

    res.fold(
      (l) => emit(PersonalInfoState.personalInfoFailure(l.errorMessage)),
      (r) => emit(PersonalInfoState.personalInfoSuccess(r)),
    );
  }

  Future<void> _onAddPersonalInfo(
    _AddPersonalInfo event,
    Emitter<PersonalInfoState> emit,
  ) async {
    emit(const PersonalInfoState.personalInfoLoading());
    final res = await _addPersonalInfo(event.personalInfoEntity);

    res.fold(
      (l) => emit(PersonalInfoState.personalInfoFailure(l.errorMessage)),
      (r) => emit(
        const PersonalInfoState.successOnlyMessage('PersonalInfo added'),
      ),
    );
  }

  Future<void> _onUpdatePersonalInfo(
    _UpdatePersonalInfo event,
    Emitter<PersonalInfoState> emit,
  ) async {
    emit(const PersonalInfoState.personalInfoLoading());
    final res = await _updatePersonalInfo(event.personalInfoEntity);

    res.fold(
      (l) => emit(PersonalInfoState.personalInfoFailure(l.errorMessage)),
      (r) => emit(
        const PersonalInfoState.successOnlyMessage('PersonalInfo updated'),
      ),
    );
  }

  Future<void> _onDeletePersonalInfo(
    _DeletePersonalInfo event,
    Emitter<PersonalInfoState> emit,
  ) async {
    emit(const PersonalInfoState.personalInfoLoading());
    final res = await _deletePersonalInfo(PersonalInfoParams(id: event.id));

    res.fold(
      (l) => emit(PersonalInfoState.personalInfoFailure(l.errorMessage)),
      (r) => emit(
        const PersonalInfoState.successOnlyMessage('PersonalInfo deleted'),
      ),
    );
  }
}
