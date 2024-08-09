import 'package:fixresume/features/auth/domain/entities/subscriptions_entity.dart';
import 'package:fixresume/features/auth/domain/usecases/subscriptions/add_subscriptions.dart';
import 'package:fixresume/features/auth/domain/usecases/subscriptions/delete_subscriptions.dart';
import 'package:fixresume/features/auth/domain/usecases/subscriptions/get_subscriptions.dart';
import 'package:fixresume/features/auth/domain/usecases/subscriptions/update_subscriptions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'subscriptions_bloc.freezed.dart';
part 'subscriptions_event.dart';
part 'subscriptions_state.dart';

@lazySingleton
class SubscriptionsBloc extends Bloc<SubscriptionsEvent, SubscriptionsState> {
  SubscriptionsBloc({
    required GetSubscriptions getSubscriptions,
    required AddSubscriptions addSubscriptions,
    required UpdateSubscriptions updateSubscriptions,
    required DeleteSubscriptions deleteSubscriptions,
  })  : _getSubscriptions = getSubscriptions,
        _addSubscriptions = addSubscriptions,
        _updateSubscriptions = updateSubscriptions,
        _deleteSubscriptions = deleteSubscriptions,
        super(const SubscriptionsState.initial()) {
    on<SubscriptionsEvent>(
      (_, emit) => emit(const SubscriptionsState.loading()),
    );

    on<_GetSubscriptions>(_onGetSubscriptions);
    on<_AddSubscriptions>(_onAddSubscriptions);
    on<_UpdateSubscriptions>(_onUpdateSubscriptions);
    on<_DeleteSubscriptions>(_onDeleteSubscriptions);
  }

  final GetSubscriptions _getSubscriptions;
  final AddSubscriptions _addSubscriptions;
  final UpdateSubscriptions _updateSubscriptions;
  final DeleteSubscriptions _deleteSubscriptions;

  Future<void> _onGetSubscriptions(
    _GetSubscriptions event,
    Emitter<SubscriptionsState> emit,
  ) async {
    final res = await _getSubscriptions(
      GetSubscriptionsParams(userId: event.userId),
    );

    res.fold(
      (l) => emit(SubscriptionsState.failure(l.errorMessage)),
      (r) => emit(SubscriptionsState.successSubscriptions(r)),
    );
  }

  Future<void> _onAddSubscriptions(
    _AddSubscriptions event,
    Emitter<SubscriptionsState> emit,
  ) async {
    final res = await _addSubscriptions(
      AddSubscriptionsParams(
        userId: event.userId,
        accType: event.accType,
      ),
    );

    res.fold(
      (l) => emit(SubscriptionsState.failure(l.errorMessage)),
      (r) => emit(
        const SubscriptionsState.successOnlyMessage('Subscriptions added'),
      ),
    );
  }

  Future<void> _onUpdateSubscriptions(
    _UpdateSubscriptions event,
    Emitter<SubscriptionsState> emit,
  ) async {
    emit(const SubscriptionsState.loading());
    final res = await _updateSubscriptions(
      UpdateSubscriptionsParams(
        userId: event.userId,
        accType: event.accType,
      ),
    );

    res.fold(
      (l) => emit(SubscriptionsState.failure(l.errorMessage)),
      (r) => emit(
        const SubscriptionsState.successOnlyMessage('Subscriptions updated'),
      ),
    );
  }

  Future<void> _onDeleteSubscriptions(
    _DeleteSubscriptions event,
    Emitter<SubscriptionsState> emit,
  ) async {
    emit(const SubscriptionsState.loading());
    final res =
        await _deleteSubscriptions(DeleteSubscriptionsParams(id: event.id));

    res.fold(
      (l) => emit(SubscriptionsState.failure(l.errorMessage)),
      (r) => emit(
        const SubscriptionsState.successOnlyMessage('Subscriptions deleted'),
      ),
    );
  }
}
