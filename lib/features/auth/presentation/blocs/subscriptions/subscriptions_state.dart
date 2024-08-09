part of 'subscriptions_bloc.dart';

@freezed
class SubscriptionsState with _$SubscriptionsState {
  const factory SubscriptionsState.initial() = _Initial;
  const factory SubscriptionsState.loading() = _Loading;
  const factory SubscriptionsState.successSubscriptions(
    SubscriptionsEntity? subscriptionsEntity,
  ) = _SuccessSubscriptions;
  const factory SubscriptionsState.successOnlyMessage(String successMessage) =
      _SuccessOnlyMessage;
  const factory SubscriptionsState.failure(String message) = _Failure;
}
