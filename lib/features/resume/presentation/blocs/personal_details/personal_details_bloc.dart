import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/sections/personal_details_entity.dart';

import 'package:fixresume/features/resume/domain/usecases/personal_details/add_personal_details.dart';
import 'package:fixresume/features/resume/domain/usecases/personal_details/delete_personal_details.dart';
import 'package:fixresume/features/resume/domain/usecases/personal_details/get_personal_details.dart';
import 'package:fixresume/features/resume/domain/usecases/personal_details/update_personal_details.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'personal_details_event.dart';
part 'personal_details_state.dart';
part 'personal_details_bloc.freezed.dart';

@lazySingleton
class PersonalDetailsBloc
    extends Bloc<PersonalDetailsEvent, PersonalDetailsState> {
  PersonalDetailsBloc({
    required GetPersonalDetails getPersonalDetails,
    required AddPersonalDetails addPersonalDetails,
    required UpdatePersonalDetails updatePersonalDetails,
    required DeletePersonalDetails deletePersonalDetails,
  })  : _getPersonalDetails = getPersonalDetails,
        _addPersonalDetails = addPersonalDetails,
        _updatePersonalDetails = updatePersonalDetails,
        _deletePersonalDetails = deletePersonalDetails,
        super(const PersonalDetailsState.initial()) {
    on<_GetPersonalDetails>(_onGetPersonalDetails);
    on<_AddPersonalDetails>(_onAddPersonalDetails);
    on<_UpdatePersonalDetails>(_onUpdatePersonalDetails);
    on<_DeletePersonalDetails>(_onDeletePersonalDetails);
  }

  final GetPersonalDetails _getPersonalDetails;
  final AddPersonalDetails _addPersonalDetails;
  final UpdatePersonalDetails _updatePersonalDetails;
  final DeletePersonalDetails _deletePersonalDetails;

  Future<void> _onGetPersonalDetails(
    _GetPersonalDetails event,
    Emitter<PersonalDetailsState> emit,
  ) async {
    emit(const PersonalDetailsState.personalDetailsLoading());
    final res = await _getPersonalDetails(NoParams());

    res.fold(
      (l) => emit(PersonalDetailsState.personalDetailsFailure(l.errorMessage)),
      (r) => emit(PersonalDetailsState.personalDetailsSuccess(r)),
    );
  }

  Future<void> _onAddPersonalDetails(
    _AddPersonalDetails event,
    Emitter<PersonalDetailsState> emit,
  ) async {
    emit(const PersonalDetailsState.personalDetailsLoading());
    final res = await _addPersonalDetails(event.personalDetailsEntity);

    res.fold(
      (l) => emit(PersonalDetailsState.personalDetailsFailure(l.errorMessage)),
      (r) => emit(
        const PersonalDetailsState.successOnlyMessage(
          'PersonalDetails added',
        ),
      ),
    );
  }

  Future<void> _onUpdatePersonalDetails(
    _UpdatePersonalDetails event,
    Emitter<PersonalDetailsState> emit,
  ) async {
    emit(const PersonalDetailsState.personalDetailsLoading());
    final res = await _updatePersonalDetails(event.personalDetailsEntity);

    res.fold(
      (l) => emit(PersonalDetailsState.personalDetailsFailure(l.errorMessage)),
      (r) => emit(
        const PersonalDetailsState.successOnlyMessage(
          'PersonalDetails updated',
        ),
      ),
    );
  }

  Future<void> _onDeletePersonalDetails(
    _DeletePersonalDetails event,
    Emitter<PersonalDetailsState> emit,
  ) async {
    emit(const PersonalDetailsState.personalDetailsLoading());
    final res =
        await _deletePersonalDetails(PersonalDetailsParams(id: event.id));

    res.fold(
      (l) => emit(PersonalDetailsState.personalDetailsFailure(l.errorMessage)),
      (r) => emit(
        const PersonalDetailsState.successOnlyMessage(
          'PersonalDetails deleted',
        ),
      ),
    );
  }
}
