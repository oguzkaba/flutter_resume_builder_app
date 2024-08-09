import 'package:fixresume/features/auth/domain/entities/user_details_entity.dart';
import 'package:fixresume/features/auth/domain/usecases/user_details/add_user_details.dart';
import 'package:fixresume/features/auth/domain/usecases/user_details/delete_user_details.dart';
import 'package:fixresume/features/auth/domain/usecases/user_details/get_user_details.dart';
import 'package:fixresume/features/auth/domain/usecases/user_details/update_user_details.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_details_bloc.freezed.dart';
part 'user_details_event.dart';
part 'user_details_state.dart';

@lazySingleton
class UserDetailsBloc extends Bloc<UserDetailsEvent, UserDetailsState> {
  UserDetailsBloc({
    required GetUserDetails getUserDetails,
    required AddUserDetails addUserDetails,
    required UpdateUserDetails updateUserDetails,
    required DeleteUserDetails deleteUserDetails,
  })  : _getUserDetails = getUserDetails,
        _addUserDetails = addUserDetails,
        _updateUserDetails = updateUserDetails,
        _deleteUserDetails = deleteUserDetails,
        super(const UserDetailsState.initial()) {
    on<UserDetailsEvent>(
      (_, emit) => emit(const UserDetailsState.loading()),
    );

    on<_GetUserDetails>(_onGetUserDetails);
    on<_AddUserDetails>(_onAddUserDetails);
    on<_UpdateUserDetails>(_onUpdateUserDetails);
    on<_DeleteUserDetails>(_onDeleteUserDetails);
  }

  final GetUserDetails _getUserDetails;
  final AddUserDetails _addUserDetails;
  final UpdateUserDetails _updateUserDetails;
  final DeleteUserDetails _deleteUserDetails;

  Future<void> _onGetUserDetails(
    _GetUserDetails event,
    Emitter<UserDetailsState> emit,
  ) async {
    final res = await _getUserDetails(
      GetUserDetailsParams(userId: event.userId),
    );

    res.fold(
      (l) => emit(UserDetailsState.failure(l.errorMessage)),
      (r) => emit(UserDetailsState.successUserDetails(r)),
    );
  }

  Future<void> _onAddUserDetails(
    _AddUserDetails event,
    Emitter<UserDetailsState> emit,
  ) async {
    final res = await _addUserDetails(
      AddUserDetailsParams(userDetailsEntity: event.userDetailsEntity),
    );

    res.fold(
      (l) => emit(UserDetailsState.failure(l.errorMessage)),
      (r) => emit(
        const UserDetailsState.successOnlyMessage('UserDetails added'),
      ),
    );
  }

  Future<void> _onUpdateUserDetails(
    _UpdateUserDetails event,
    Emitter<UserDetailsState> emit,
  ) async {
    emit(const UserDetailsState.loading());
    final res = await _updateUserDetails(
      UpdateUserDetailsParams(
        userDetailsEntity: event.userDetailsEntity,
      ),
    );

    res.fold(
      (l) => emit(UserDetailsState.failure(l.errorMessage)),
      (r) => emit(UserDetailsState.successUserDetails(r)),
    );
  }

  Future<void> _onDeleteUserDetails(
    _DeleteUserDetails event,
    Emitter<UserDetailsState> emit,
  ) async {
    emit(const UserDetailsState.loading());
    final res = await _deleteUserDetails(DeleteUserDetailsParams(id: event.id));

    res.fold(
      (l) => emit(UserDetailsState.failure(l.errorMessage)),
      (r) => emit(
        const UserDetailsState.successOnlyMessage('UserDetails deleted'),
      ),
    );
  }
}
