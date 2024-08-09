import 'package:fixresume/core/usecase/usecase.dart';
import 'package:fixresume/features/resume/domain/entities/sections/social_accounts_entity.dart';

import 'package:fixresume/features/resume/domain/usecases/social_accounts/add_social_accounts.dart';
import 'package:fixresume/features/resume/domain/usecases/social_accounts/delete_social_accounts.dart';
import 'package:fixresume/features/resume/domain/usecases/social_accounts/get_social_accounts.dart';
import 'package:fixresume/features/resume/domain/usecases/social_accounts/update_social_accounts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'social_accounts_event.dart';
part 'social_accounts_state.dart';
part 'social_accounts_bloc.freezed.dart';

@lazySingleton
class SocialAccountsBloc
    extends Bloc<SocialAccountsEvent, SocialAccountsState> {
  SocialAccountsBloc({
    required GetSocialAccounts getSocialAccounts,
    required AddSocialAccounts addSocialAccounts,
    required UpdateSocialAccounts updateSocialAccounts,
    required DeleteSocialAccounts deleteSocialAccounts,
  })  : _getSocialAccounts = getSocialAccounts,
        _addSocialAccounts = addSocialAccounts,
        _updateSocialAccounts = updateSocialAccounts,
        _deleteSocialAccounts = deleteSocialAccounts,
        super(const SocialAccountsState.initial()) {
    on<_GetSocialAccounts>(_onGetSocialAccounts);
    on<_AddSocialAccounts>(_onAddSocialAccounts);
    on<_UpdateSocialAccounts>(_onUpdateSocialAccounts);
    on<_DeleteSocialAccounts>(_onDeleteSocialAccounts);
  }

  final GetSocialAccounts _getSocialAccounts;
  final AddSocialAccounts _addSocialAccounts;
  final UpdateSocialAccounts _updateSocialAccounts;
  final DeleteSocialAccounts _deleteSocialAccounts;

  Future<void> _onGetSocialAccounts(
    _GetSocialAccounts event,
    Emitter<SocialAccountsState> emit,
  ) async {
    emit(const SocialAccountsState.socialAccountsLoading());
    final res = await _getSocialAccounts(NoParams());

    res.fold(
      (l) => emit(SocialAccountsState.socialAccountsFailure(l.errorMessage)),
      (r) => emit(SocialAccountsState.socialAccountsSuccess(r)),
    );
  }

  Future<void> _onAddSocialAccounts(
    _AddSocialAccounts event,
    Emitter<SocialAccountsState> emit,
  ) async {
    emit(const SocialAccountsState.socialAccountsLoading());
    final res = await _addSocialAccounts(event.socialAccountsEntity);

    res.fold(
      (l) => emit(SocialAccountsState.socialAccountsFailure(l.errorMessage)),
      (r) => emit(
        const SocialAccountsState.successOnlyMessage('SocialAccounts added'),
      ),
    );
  }

  Future<void> _onUpdateSocialAccounts(
    _UpdateSocialAccounts event,
    Emitter<SocialAccountsState> emit,
  ) async {
    emit(const SocialAccountsState.socialAccountsLoading());
    final res = await _updateSocialAccounts(event.socialAccountsEntity);

    res.fold(
      (l) => emit(SocialAccountsState.socialAccountsFailure(l.errorMessage)),
      (r) => emit(
        const SocialAccountsState.successOnlyMessage(
          'SocialAccounts updated',
        ),
      ),
    );
  }

  Future<void> _onDeleteSocialAccounts(
    _DeleteSocialAccounts event,
    Emitter<SocialAccountsState> emit,
  ) async {
    emit(const SocialAccountsState.socialAccountsLoading());
    final res = await _deleteSocialAccounts(SocialAccountsParams(id: event.id));

    res.fold(
      (l) => emit(SocialAccountsState.socialAccountsFailure(l.errorMessage)),
      (r) => emit(
        const SocialAccountsState.successOnlyMessage(
          'SocialAccounts deleted',
        ),
      ),
    );
  }
}
