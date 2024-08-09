// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscriptions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubscriptionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getSubscriptions,
    required TResult Function(String userId, String accType) addSubscriptions,
    required TResult Function(String userId, String accType)
        updateSubscriptions,
    required TResult Function(int id) deleteSubscriptions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getSubscriptions,
    TResult? Function(String userId, String accType)? addSubscriptions,
    TResult? Function(String userId, String accType)? updateSubscriptions,
    TResult? Function(int id)? deleteSubscriptions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getSubscriptions,
    TResult Function(String userId, String accType)? addSubscriptions,
    TResult Function(String userId, String accType)? updateSubscriptions,
    TResult Function(int id)? deleteSubscriptions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSubscriptions value) getSubscriptions,
    required TResult Function(_AddSubscriptions value) addSubscriptions,
    required TResult Function(_UpdateSubscriptions value) updateSubscriptions,
    required TResult Function(_DeleteSubscriptions value) deleteSubscriptions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubscriptions value)? getSubscriptions,
    TResult? Function(_AddSubscriptions value)? addSubscriptions,
    TResult? Function(_UpdateSubscriptions value)? updateSubscriptions,
    TResult? Function(_DeleteSubscriptions value)? deleteSubscriptions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscriptions value)? getSubscriptions,
    TResult Function(_AddSubscriptions value)? addSubscriptions,
    TResult Function(_UpdateSubscriptions value)? updateSubscriptions,
    TResult Function(_DeleteSubscriptions value)? deleteSubscriptions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionsEventCopyWith<$Res> {
  factory $SubscriptionsEventCopyWith(
          SubscriptionsEvent value, $Res Function(SubscriptionsEvent) then) =
      _$SubscriptionsEventCopyWithImpl<$Res, SubscriptionsEvent>;
}

/// @nodoc
class _$SubscriptionsEventCopyWithImpl<$Res, $Val extends SubscriptionsEvent>
    implements $SubscriptionsEventCopyWith<$Res> {
  _$SubscriptionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSubscriptionsImplCopyWith<$Res> {
  factory _$$GetSubscriptionsImplCopyWith(_$GetSubscriptionsImpl value,
          $Res Function(_$GetSubscriptionsImpl) then) =
      __$$GetSubscriptionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetSubscriptionsImplCopyWithImpl<$Res>
    extends _$SubscriptionsEventCopyWithImpl<$Res, _$GetSubscriptionsImpl>
    implements _$$GetSubscriptionsImplCopyWith<$Res> {
  __$$GetSubscriptionsImplCopyWithImpl(_$GetSubscriptionsImpl _value,
      $Res Function(_$GetSubscriptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetSubscriptionsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSubscriptionsImpl implements _GetSubscriptions {
  const _$GetSubscriptionsImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'SubscriptionsEvent.getSubscriptions(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSubscriptionsImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSubscriptionsImplCopyWith<_$GetSubscriptionsImpl> get copyWith =>
      __$$GetSubscriptionsImplCopyWithImpl<_$GetSubscriptionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getSubscriptions,
    required TResult Function(String userId, String accType) addSubscriptions,
    required TResult Function(String userId, String accType)
        updateSubscriptions,
    required TResult Function(int id) deleteSubscriptions,
  }) {
    return getSubscriptions(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getSubscriptions,
    TResult? Function(String userId, String accType)? addSubscriptions,
    TResult? Function(String userId, String accType)? updateSubscriptions,
    TResult? Function(int id)? deleteSubscriptions,
  }) {
    return getSubscriptions?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getSubscriptions,
    TResult Function(String userId, String accType)? addSubscriptions,
    TResult Function(String userId, String accType)? updateSubscriptions,
    TResult Function(int id)? deleteSubscriptions,
    required TResult orElse(),
  }) {
    if (getSubscriptions != null) {
      return getSubscriptions(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSubscriptions value) getSubscriptions,
    required TResult Function(_AddSubscriptions value) addSubscriptions,
    required TResult Function(_UpdateSubscriptions value) updateSubscriptions,
    required TResult Function(_DeleteSubscriptions value) deleteSubscriptions,
  }) {
    return getSubscriptions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubscriptions value)? getSubscriptions,
    TResult? Function(_AddSubscriptions value)? addSubscriptions,
    TResult? Function(_UpdateSubscriptions value)? updateSubscriptions,
    TResult? Function(_DeleteSubscriptions value)? deleteSubscriptions,
  }) {
    return getSubscriptions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscriptions value)? getSubscriptions,
    TResult Function(_AddSubscriptions value)? addSubscriptions,
    TResult Function(_UpdateSubscriptions value)? updateSubscriptions,
    TResult Function(_DeleteSubscriptions value)? deleteSubscriptions,
    required TResult orElse(),
  }) {
    if (getSubscriptions != null) {
      return getSubscriptions(this);
    }
    return orElse();
  }
}

abstract class _GetSubscriptions implements SubscriptionsEvent {
  const factory _GetSubscriptions({required final String userId}) =
      _$GetSubscriptionsImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$GetSubscriptionsImplCopyWith<_$GetSubscriptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSubscriptionsImplCopyWith<$Res> {
  factory _$$AddSubscriptionsImplCopyWith(_$AddSubscriptionsImpl value,
          $Res Function(_$AddSubscriptionsImpl) then) =
      __$$AddSubscriptionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String accType});
}

/// @nodoc
class __$$AddSubscriptionsImplCopyWithImpl<$Res>
    extends _$SubscriptionsEventCopyWithImpl<$Res, _$AddSubscriptionsImpl>
    implements _$$AddSubscriptionsImplCopyWith<$Res> {
  __$$AddSubscriptionsImplCopyWithImpl(_$AddSubscriptionsImpl _value,
      $Res Function(_$AddSubscriptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? accType = null,
  }) {
    return _then(_$AddSubscriptionsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      accType: null == accType
          ? _value.accType
          : accType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddSubscriptionsImpl implements _AddSubscriptions {
  const _$AddSubscriptionsImpl({required this.userId, required this.accType});

  @override
  final String userId;
  @override
  final String accType;

  @override
  String toString() {
    return 'SubscriptionsEvent.addSubscriptions(userId: $userId, accType: $accType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSubscriptionsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.accType, accType) || other.accType == accType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, accType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSubscriptionsImplCopyWith<_$AddSubscriptionsImpl> get copyWith =>
      __$$AddSubscriptionsImplCopyWithImpl<_$AddSubscriptionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getSubscriptions,
    required TResult Function(String userId, String accType) addSubscriptions,
    required TResult Function(String userId, String accType)
        updateSubscriptions,
    required TResult Function(int id) deleteSubscriptions,
  }) {
    return addSubscriptions(userId, accType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getSubscriptions,
    TResult? Function(String userId, String accType)? addSubscriptions,
    TResult? Function(String userId, String accType)? updateSubscriptions,
    TResult? Function(int id)? deleteSubscriptions,
  }) {
    return addSubscriptions?.call(userId, accType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getSubscriptions,
    TResult Function(String userId, String accType)? addSubscriptions,
    TResult Function(String userId, String accType)? updateSubscriptions,
    TResult Function(int id)? deleteSubscriptions,
    required TResult orElse(),
  }) {
    if (addSubscriptions != null) {
      return addSubscriptions(userId, accType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSubscriptions value) getSubscriptions,
    required TResult Function(_AddSubscriptions value) addSubscriptions,
    required TResult Function(_UpdateSubscriptions value) updateSubscriptions,
    required TResult Function(_DeleteSubscriptions value) deleteSubscriptions,
  }) {
    return addSubscriptions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubscriptions value)? getSubscriptions,
    TResult? Function(_AddSubscriptions value)? addSubscriptions,
    TResult? Function(_UpdateSubscriptions value)? updateSubscriptions,
    TResult? Function(_DeleteSubscriptions value)? deleteSubscriptions,
  }) {
    return addSubscriptions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscriptions value)? getSubscriptions,
    TResult Function(_AddSubscriptions value)? addSubscriptions,
    TResult Function(_UpdateSubscriptions value)? updateSubscriptions,
    TResult Function(_DeleteSubscriptions value)? deleteSubscriptions,
    required TResult orElse(),
  }) {
    if (addSubscriptions != null) {
      return addSubscriptions(this);
    }
    return orElse();
  }
}

abstract class _AddSubscriptions implements SubscriptionsEvent {
  const factory _AddSubscriptions(
      {required final String userId,
      required final String accType}) = _$AddSubscriptionsImpl;

  String get userId;
  String get accType;
  @JsonKey(ignore: true)
  _$$AddSubscriptionsImplCopyWith<_$AddSubscriptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSubscriptionsImplCopyWith<$Res> {
  factory _$$UpdateSubscriptionsImplCopyWith(_$UpdateSubscriptionsImpl value,
          $Res Function(_$UpdateSubscriptionsImpl) then) =
      __$$UpdateSubscriptionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String accType});
}

/// @nodoc
class __$$UpdateSubscriptionsImplCopyWithImpl<$Res>
    extends _$SubscriptionsEventCopyWithImpl<$Res, _$UpdateSubscriptionsImpl>
    implements _$$UpdateSubscriptionsImplCopyWith<$Res> {
  __$$UpdateSubscriptionsImplCopyWithImpl(_$UpdateSubscriptionsImpl _value,
      $Res Function(_$UpdateSubscriptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? accType = null,
  }) {
    return _then(_$UpdateSubscriptionsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      accType: null == accType
          ? _value.accType
          : accType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateSubscriptionsImpl implements _UpdateSubscriptions {
  const _$UpdateSubscriptionsImpl(
      {required this.userId, required this.accType});

  @override
  final String userId;
  @override
  final String accType;

  @override
  String toString() {
    return 'SubscriptionsEvent.updateSubscriptions(userId: $userId, accType: $accType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSubscriptionsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.accType, accType) || other.accType == accType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, accType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSubscriptionsImplCopyWith<_$UpdateSubscriptionsImpl> get copyWith =>
      __$$UpdateSubscriptionsImplCopyWithImpl<_$UpdateSubscriptionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getSubscriptions,
    required TResult Function(String userId, String accType) addSubscriptions,
    required TResult Function(String userId, String accType)
        updateSubscriptions,
    required TResult Function(int id) deleteSubscriptions,
  }) {
    return updateSubscriptions(userId, accType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getSubscriptions,
    TResult? Function(String userId, String accType)? addSubscriptions,
    TResult? Function(String userId, String accType)? updateSubscriptions,
    TResult? Function(int id)? deleteSubscriptions,
  }) {
    return updateSubscriptions?.call(userId, accType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getSubscriptions,
    TResult Function(String userId, String accType)? addSubscriptions,
    TResult Function(String userId, String accType)? updateSubscriptions,
    TResult Function(int id)? deleteSubscriptions,
    required TResult orElse(),
  }) {
    if (updateSubscriptions != null) {
      return updateSubscriptions(userId, accType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSubscriptions value) getSubscriptions,
    required TResult Function(_AddSubscriptions value) addSubscriptions,
    required TResult Function(_UpdateSubscriptions value) updateSubscriptions,
    required TResult Function(_DeleteSubscriptions value) deleteSubscriptions,
  }) {
    return updateSubscriptions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubscriptions value)? getSubscriptions,
    TResult? Function(_AddSubscriptions value)? addSubscriptions,
    TResult? Function(_UpdateSubscriptions value)? updateSubscriptions,
    TResult? Function(_DeleteSubscriptions value)? deleteSubscriptions,
  }) {
    return updateSubscriptions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscriptions value)? getSubscriptions,
    TResult Function(_AddSubscriptions value)? addSubscriptions,
    TResult Function(_UpdateSubscriptions value)? updateSubscriptions,
    TResult Function(_DeleteSubscriptions value)? deleteSubscriptions,
    required TResult orElse(),
  }) {
    if (updateSubscriptions != null) {
      return updateSubscriptions(this);
    }
    return orElse();
  }
}

abstract class _UpdateSubscriptions implements SubscriptionsEvent {
  const factory _UpdateSubscriptions(
      {required final String userId,
      required final String accType}) = _$UpdateSubscriptionsImpl;

  String get userId;
  String get accType;
  @JsonKey(ignore: true)
  _$$UpdateSubscriptionsImplCopyWith<_$UpdateSubscriptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSubscriptionsImplCopyWith<$Res> {
  factory _$$DeleteSubscriptionsImplCopyWith(_$DeleteSubscriptionsImpl value,
          $Res Function(_$DeleteSubscriptionsImpl) then) =
      __$$DeleteSubscriptionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteSubscriptionsImplCopyWithImpl<$Res>
    extends _$SubscriptionsEventCopyWithImpl<$Res, _$DeleteSubscriptionsImpl>
    implements _$$DeleteSubscriptionsImplCopyWith<$Res> {
  __$$DeleteSubscriptionsImplCopyWithImpl(_$DeleteSubscriptionsImpl _value,
      $Res Function(_$DeleteSubscriptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteSubscriptionsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteSubscriptionsImpl implements _DeleteSubscriptions {
  const _$DeleteSubscriptionsImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'SubscriptionsEvent.deleteSubscriptions(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSubscriptionsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSubscriptionsImplCopyWith<_$DeleteSubscriptionsImpl> get copyWith =>
      __$$DeleteSubscriptionsImplCopyWithImpl<_$DeleteSubscriptionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getSubscriptions,
    required TResult Function(String userId, String accType) addSubscriptions,
    required TResult Function(String userId, String accType)
        updateSubscriptions,
    required TResult Function(int id) deleteSubscriptions,
  }) {
    return deleteSubscriptions(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getSubscriptions,
    TResult? Function(String userId, String accType)? addSubscriptions,
    TResult? Function(String userId, String accType)? updateSubscriptions,
    TResult? Function(int id)? deleteSubscriptions,
  }) {
    return deleteSubscriptions?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getSubscriptions,
    TResult Function(String userId, String accType)? addSubscriptions,
    TResult Function(String userId, String accType)? updateSubscriptions,
    TResult Function(int id)? deleteSubscriptions,
    required TResult orElse(),
  }) {
    if (deleteSubscriptions != null) {
      return deleteSubscriptions(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSubscriptions value) getSubscriptions,
    required TResult Function(_AddSubscriptions value) addSubscriptions,
    required TResult Function(_UpdateSubscriptions value) updateSubscriptions,
    required TResult Function(_DeleteSubscriptions value) deleteSubscriptions,
  }) {
    return deleteSubscriptions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSubscriptions value)? getSubscriptions,
    TResult? Function(_AddSubscriptions value)? addSubscriptions,
    TResult? Function(_UpdateSubscriptions value)? updateSubscriptions,
    TResult? Function(_DeleteSubscriptions value)? deleteSubscriptions,
  }) {
    return deleteSubscriptions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSubscriptions value)? getSubscriptions,
    TResult Function(_AddSubscriptions value)? addSubscriptions,
    TResult Function(_UpdateSubscriptions value)? updateSubscriptions,
    TResult Function(_DeleteSubscriptions value)? deleteSubscriptions,
    required TResult orElse(),
  }) {
    if (deleteSubscriptions != null) {
      return deleteSubscriptions(this);
    }
    return orElse();
  }
}

abstract class _DeleteSubscriptions implements SubscriptionsEvent {
  const factory _DeleteSubscriptions({required final int id}) =
      _$DeleteSubscriptionsImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteSubscriptionsImplCopyWith<_$DeleteSubscriptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubscriptionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SubscriptionsEntity? subscriptionsEntity)
        successSubscriptions,
    required TResult Function(String successMessage) successOnlyMessage,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SubscriptionsEntity? subscriptionsEntity)?
        successSubscriptions,
    TResult? Function(String successMessage)? successOnlyMessage,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SubscriptionsEntity? subscriptionsEntity)?
        successSubscriptions,
    TResult Function(String successMessage)? successOnlyMessage,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSubscriptions value) successSubscriptions,
    required TResult Function(_SuccessOnlyMessage value) successOnlyMessage,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult? Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionsStateCopyWith<$Res> {
  factory $SubscriptionsStateCopyWith(
          SubscriptionsState value, $Res Function(SubscriptionsState) then) =
      _$SubscriptionsStateCopyWithImpl<$Res, SubscriptionsState>;
}

/// @nodoc
class _$SubscriptionsStateCopyWithImpl<$Res, $Val extends SubscriptionsState>
    implements $SubscriptionsStateCopyWith<$Res> {
  _$SubscriptionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SubscriptionsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SubscriptionsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SubscriptionsEntity? subscriptionsEntity)
        successSubscriptions,
    required TResult Function(String successMessage) successOnlyMessage,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SubscriptionsEntity? subscriptionsEntity)?
        successSubscriptions,
    TResult? Function(String successMessage)? successOnlyMessage,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SubscriptionsEntity? subscriptionsEntity)?
        successSubscriptions,
    TResult Function(String successMessage)? successOnlyMessage,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSubscriptions value) successSubscriptions,
    required TResult Function(_SuccessOnlyMessage value) successOnlyMessage,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult? Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SubscriptionsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SubscriptionsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SubscriptionsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SubscriptionsEntity? subscriptionsEntity)
        successSubscriptions,
    required TResult Function(String successMessage) successOnlyMessage,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SubscriptionsEntity? subscriptionsEntity)?
        successSubscriptions,
    TResult? Function(String successMessage)? successOnlyMessage,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SubscriptionsEntity? subscriptionsEntity)?
        successSubscriptions,
    TResult Function(String successMessage)? successOnlyMessage,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSubscriptions value) successSubscriptions,
    required TResult Function(_SuccessOnlyMessage value) successOnlyMessage,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult? Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SubscriptionsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessSubscriptionsImplCopyWith<$Res> {
  factory _$$SuccessSubscriptionsImplCopyWith(_$SuccessSubscriptionsImpl value,
          $Res Function(_$SuccessSubscriptionsImpl) then) =
      __$$SuccessSubscriptionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SubscriptionsEntity? subscriptionsEntity});
}

/// @nodoc
class __$$SuccessSubscriptionsImplCopyWithImpl<$Res>
    extends _$SubscriptionsStateCopyWithImpl<$Res, _$SuccessSubscriptionsImpl>
    implements _$$SuccessSubscriptionsImplCopyWith<$Res> {
  __$$SuccessSubscriptionsImplCopyWithImpl(_$SuccessSubscriptionsImpl _value,
      $Res Function(_$SuccessSubscriptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionsEntity = freezed,
  }) {
    return _then(_$SuccessSubscriptionsImpl(
      freezed == subscriptionsEntity
          ? _value.subscriptionsEntity
          : subscriptionsEntity // ignore: cast_nullable_to_non_nullable
              as SubscriptionsEntity?,
    ));
  }
}

/// @nodoc

class _$SuccessSubscriptionsImpl implements _SuccessSubscriptions {
  const _$SuccessSubscriptionsImpl(this.subscriptionsEntity);

  @override
  final SubscriptionsEntity? subscriptionsEntity;

  @override
  String toString() {
    return 'SubscriptionsState.successSubscriptions(subscriptionsEntity: $subscriptionsEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSubscriptionsImpl &&
            (identical(other.subscriptionsEntity, subscriptionsEntity) ||
                other.subscriptionsEntity == subscriptionsEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subscriptionsEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSubscriptionsImplCopyWith<_$SuccessSubscriptionsImpl>
      get copyWith =>
          __$$SuccessSubscriptionsImplCopyWithImpl<_$SuccessSubscriptionsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SubscriptionsEntity? subscriptionsEntity)
        successSubscriptions,
    required TResult Function(String successMessage) successOnlyMessage,
    required TResult Function(String message) failure,
  }) {
    return successSubscriptions(subscriptionsEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SubscriptionsEntity? subscriptionsEntity)?
        successSubscriptions,
    TResult? Function(String successMessage)? successOnlyMessage,
    TResult? Function(String message)? failure,
  }) {
    return successSubscriptions?.call(subscriptionsEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SubscriptionsEntity? subscriptionsEntity)?
        successSubscriptions,
    TResult Function(String successMessage)? successOnlyMessage,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (successSubscriptions != null) {
      return successSubscriptions(subscriptionsEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSubscriptions value) successSubscriptions,
    required TResult Function(_SuccessOnlyMessage value) successOnlyMessage,
    required TResult Function(_Failure value) failure,
  }) {
    return successSubscriptions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult? Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult? Function(_Failure value)? failure,
  }) {
    return successSubscriptions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successSubscriptions != null) {
      return successSubscriptions(this);
    }
    return orElse();
  }
}

abstract class _SuccessSubscriptions implements SubscriptionsState {
  const factory _SuccessSubscriptions(
          final SubscriptionsEntity? subscriptionsEntity) =
      _$SuccessSubscriptionsImpl;

  SubscriptionsEntity? get subscriptionsEntity;
  @JsonKey(ignore: true)
  _$$SuccessSubscriptionsImplCopyWith<_$SuccessSubscriptionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessOnlyMessageImplCopyWith<$Res> {
  factory _$$SuccessOnlyMessageImplCopyWith(_$SuccessOnlyMessageImpl value,
          $Res Function(_$SuccessOnlyMessageImpl) then) =
      __$$SuccessOnlyMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String successMessage});
}

/// @nodoc
class __$$SuccessOnlyMessageImplCopyWithImpl<$Res>
    extends _$SubscriptionsStateCopyWithImpl<$Res, _$SuccessOnlyMessageImpl>
    implements _$$SuccessOnlyMessageImplCopyWith<$Res> {
  __$$SuccessOnlyMessageImplCopyWithImpl(_$SuccessOnlyMessageImpl _value,
      $Res Function(_$SuccessOnlyMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successMessage = null,
  }) {
    return _then(_$SuccessOnlyMessageImpl(
      null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessOnlyMessageImpl implements _SuccessOnlyMessage {
  const _$SuccessOnlyMessageImpl(this.successMessage);

  @override
  final String successMessage;

  @override
  String toString() {
    return 'SubscriptionsState.successOnlyMessage(successMessage: $successMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessOnlyMessageImpl &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessOnlyMessageImplCopyWith<_$SuccessOnlyMessageImpl> get copyWith =>
      __$$SuccessOnlyMessageImplCopyWithImpl<_$SuccessOnlyMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SubscriptionsEntity? subscriptionsEntity)
        successSubscriptions,
    required TResult Function(String successMessage) successOnlyMessage,
    required TResult Function(String message) failure,
  }) {
    return successOnlyMessage(successMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SubscriptionsEntity? subscriptionsEntity)?
        successSubscriptions,
    TResult? Function(String successMessage)? successOnlyMessage,
    TResult? Function(String message)? failure,
  }) {
    return successOnlyMessage?.call(successMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SubscriptionsEntity? subscriptionsEntity)?
        successSubscriptions,
    TResult Function(String successMessage)? successOnlyMessage,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (successOnlyMessage != null) {
      return successOnlyMessage(successMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSubscriptions value) successSubscriptions,
    required TResult Function(_SuccessOnlyMessage value) successOnlyMessage,
    required TResult Function(_Failure value) failure,
  }) {
    return successOnlyMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult? Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult? Function(_Failure value)? failure,
  }) {
    return successOnlyMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successOnlyMessage != null) {
      return successOnlyMessage(this);
    }
    return orElse();
  }
}

abstract class _SuccessOnlyMessage implements SubscriptionsState {
  const factory _SuccessOnlyMessage(final String successMessage) =
      _$SuccessOnlyMessageImpl;

  String get successMessage;
  @JsonKey(ignore: true)
  _$$SuccessOnlyMessageImplCopyWith<_$SuccessOnlyMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$SubscriptionsStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SubscriptionsState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SubscriptionsEntity? subscriptionsEntity)
        successSubscriptions,
    required TResult Function(String successMessage) successOnlyMessage,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SubscriptionsEntity? subscriptionsEntity)?
        successSubscriptions,
    TResult? Function(String successMessage)? successOnlyMessage,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SubscriptionsEntity? subscriptionsEntity)?
        successSubscriptions,
    TResult Function(String successMessage)? successOnlyMessage,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessSubscriptions value) successSubscriptions,
    required TResult Function(_SuccessOnlyMessage value) successOnlyMessage,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult? Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SubscriptionsState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
