part of 'subscriptions_bloc.dart';

@freezed
class SubscriptionsEvent with _$SubscriptionsEvent {
  const factory SubscriptionsEvent.getSubscriptions({
    required String userId,
  }) = _GetSubscriptions;
  const factory SubscriptionsEvent.addSubscriptions({
    required String userId,
    required String accType,
  }) = _AddSubscriptions;
  const factory SubscriptionsEvent.updateSubscriptions({
    required String userId,
    required String accType,
  }) = _UpdateSubscriptions;
  const factory SubscriptionsEvent.deleteSubscriptions({
    required int id,
  }) = _DeleteSubscriptions;
}
