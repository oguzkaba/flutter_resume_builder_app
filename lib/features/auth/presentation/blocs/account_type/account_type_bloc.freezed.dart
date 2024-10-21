// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_type_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountTypeEvent {
  AccountTypeEnum get accountTypeEnum => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountTypeEnum accountTypeEnum) getAccountType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountTypeEnum accountTypeEnum)? getAccountType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountTypeEnum accountTypeEnum)? getAccountType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAccountType value) getAccountType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccountType value)? getAccountType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccountType value)? getAccountType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AccountTypeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountTypeEventCopyWith<AccountTypeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountTypeEventCopyWith<$Res> {
  factory $AccountTypeEventCopyWith(
          AccountTypeEvent value, $Res Function(AccountTypeEvent) then) =
      _$AccountTypeEventCopyWithImpl<$Res, AccountTypeEvent>;
  @useResult
  $Res call({AccountTypeEnum accountTypeEnum});
}

/// @nodoc
class _$AccountTypeEventCopyWithImpl<$Res, $Val extends AccountTypeEvent>
    implements $AccountTypeEventCopyWith<$Res> {
  _$AccountTypeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountTypeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountTypeEnum = null,
  }) {
    return _then(_value.copyWith(
      accountTypeEnum: null == accountTypeEnum
          ? _value.accountTypeEnum
          : accountTypeEnum // ignore: cast_nullable_to_non_nullable
              as AccountTypeEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAccountTypeImplCopyWith<$Res>
    implements $AccountTypeEventCopyWith<$Res> {
  factory _$$GetAccountTypeImplCopyWith(_$GetAccountTypeImpl value,
          $Res Function(_$GetAccountTypeImpl) then) =
      __$$GetAccountTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountTypeEnum accountTypeEnum});
}

/// @nodoc
class __$$GetAccountTypeImplCopyWithImpl<$Res>
    extends _$AccountTypeEventCopyWithImpl<$Res, _$GetAccountTypeImpl>
    implements _$$GetAccountTypeImplCopyWith<$Res> {
  __$$GetAccountTypeImplCopyWithImpl(
      _$GetAccountTypeImpl _value, $Res Function(_$GetAccountTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountTypeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountTypeEnum = null,
  }) {
    return _then(_$GetAccountTypeImpl(
      accountTypeEnum: null == accountTypeEnum
          ? _value.accountTypeEnum
          : accountTypeEnum // ignore: cast_nullable_to_non_nullable
              as AccountTypeEnum,
    ));
  }
}

/// @nodoc

class _$GetAccountTypeImpl implements _GetAccountType {
  const _$GetAccountTypeImpl({required this.accountTypeEnum});

  @override
  final AccountTypeEnum accountTypeEnum;

  @override
  String toString() {
    return 'AccountTypeEvent.getAccountType(accountTypeEnum: $accountTypeEnum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccountTypeImpl &&
            (identical(other.accountTypeEnum, accountTypeEnum) ||
                other.accountTypeEnum == accountTypeEnum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountTypeEnum);

  /// Create a copy of AccountTypeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAccountTypeImplCopyWith<_$GetAccountTypeImpl> get copyWith =>
      __$$GetAccountTypeImplCopyWithImpl<_$GetAccountTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountTypeEnum accountTypeEnum) getAccountType,
  }) {
    return getAccountType(accountTypeEnum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AccountTypeEnum accountTypeEnum)? getAccountType,
  }) {
    return getAccountType?.call(accountTypeEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountTypeEnum accountTypeEnum)? getAccountType,
    required TResult orElse(),
  }) {
    if (getAccountType != null) {
      return getAccountType(accountTypeEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAccountType value) getAccountType,
  }) {
    return getAccountType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAccountType value)? getAccountType,
  }) {
    return getAccountType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAccountType value)? getAccountType,
    required TResult orElse(),
  }) {
    if (getAccountType != null) {
      return getAccountType(this);
    }
    return orElse();
  }
}

abstract class _GetAccountType implements AccountTypeEvent {
  const factory _GetAccountType(
      {required final AccountTypeEnum accountTypeEnum}) = _$GetAccountTypeImpl;

  @override
  AccountTypeEnum get accountTypeEnum;

  /// Create a copy of AccountTypeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAccountTypeImplCopyWith<_$GetAccountTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountTypeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AccountTypeEntity? accountTypeEntity)
        successAccountType,
    required TResult Function(String successMessage) successOnlyMessage,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AccountTypeEntity? accountTypeEntity)? successAccountType,
    TResult? Function(String successMessage)? successOnlyMessage,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AccountTypeEntity? accountTypeEntity)? successAccountType,
    TResult Function(String successMessage)? successOnlyMessage,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessAccountType value) successAccountType,
    required TResult Function(_SuccessOnlyMessage value) successOnlyMessage,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessAccountType value)? successAccountType,
    TResult? Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessAccountType value)? successAccountType,
    TResult Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountTypeStateCopyWith<$Res> {
  factory $AccountTypeStateCopyWith(
          AccountTypeState value, $Res Function(AccountTypeState) then) =
      _$AccountTypeStateCopyWithImpl<$Res, AccountTypeState>;
}

/// @nodoc
class _$AccountTypeStateCopyWithImpl<$Res, $Val extends AccountTypeState>
    implements $AccountTypeStateCopyWith<$Res> {
  _$AccountTypeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountTypeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AccountTypeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountTypeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AccountTypeState.initial()';
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
    required TResult Function(AccountTypeEntity? accountTypeEntity)
        successAccountType,
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
    TResult? Function(AccountTypeEntity? accountTypeEntity)? successAccountType,
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
    TResult Function(AccountTypeEntity? accountTypeEntity)? successAccountType,
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
    required TResult Function(_SuccessAccountType value) successAccountType,
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
    TResult? Function(_SuccessAccountType value)? successAccountType,
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
    TResult Function(_SuccessAccountType value)? successAccountType,
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

abstract class _Initial implements AccountTypeState {
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
    extends _$AccountTypeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountTypeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AccountTypeState.loading()';
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
    required TResult Function(AccountTypeEntity? accountTypeEntity)
        successAccountType,
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
    TResult? Function(AccountTypeEntity? accountTypeEntity)? successAccountType,
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
    TResult Function(AccountTypeEntity? accountTypeEntity)? successAccountType,
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
    required TResult Function(_SuccessAccountType value) successAccountType,
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
    TResult? Function(_SuccessAccountType value)? successAccountType,
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
    TResult Function(_SuccessAccountType value)? successAccountType,
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

abstract class _Loading implements AccountTypeState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessAccountTypeImplCopyWith<$Res> {
  factory _$$SuccessAccountTypeImplCopyWith(_$SuccessAccountTypeImpl value,
          $Res Function(_$SuccessAccountTypeImpl) then) =
      __$$SuccessAccountTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountTypeEntity? accountTypeEntity});
}

/// @nodoc
class __$$SuccessAccountTypeImplCopyWithImpl<$Res>
    extends _$AccountTypeStateCopyWithImpl<$Res, _$SuccessAccountTypeImpl>
    implements _$$SuccessAccountTypeImplCopyWith<$Res> {
  __$$SuccessAccountTypeImplCopyWithImpl(_$SuccessAccountTypeImpl _value,
      $Res Function(_$SuccessAccountTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountTypeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountTypeEntity = freezed,
  }) {
    return _then(_$SuccessAccountTypeImpl(
      freezed == accountTypeEntity
          ? _value.accountTypeEntity
          : accountTypeEntity // ignore: cast_nullable_to_non_nullable
              as AccountTypeEntity?,
    ));
  }
}

/// @nodoc

class _$SuccessAccountTypeImpl implements _SuccessAccountType {
  const _$SuccessAccountTypeImpl(this.accountTypeEntity);

  @override
  final AccountTypeEntity? accountTypeEntity;

  @override
  String toString() {
    return 'AccountTypeState.successAccountType(accountTypeEntity: $accountTypeEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessAccountTypeImpl &&
            (identical(other.accountTypeEntity, accountTypeEntity) ||
                other.accountTypeEntity == accountTypeEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountTypeEntity);

  /// Create a copy of AccountTypeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessAccountTypeImplCopyWith<_$SuccessAccountTypeImpl> get copyWith =>
      __$$SuccessAccountTypeImplCopyWithImpl<_$SuccessAccountTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AccountTypeEntity? accountTypeEntity)
        successAccountType,
    required TResult Function(String successMessage) successOnlyMessage,
    required TResult Function(String message) failure,
  }) {
    return successAccountType(accountTypeEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AccountTypeEntity? accountTypeEntity)? successAccountType,
    TResult? Function(String successMessage)? successOnlyMessage,
    TResult? Function(String message)? failure,
  }) {
    return successAccountType?.call(accountTypeEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AccountTypeEntity? accountTypeEntity)? successAccountType,
    TResult Function(String successMessage)? successOnlyMessage,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (successAccountType != null) {
      return successAccountType(accountTypeEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessAccountType value) successAccountType,
    required TResult Function(_SuccessOnlyMessage value) successOnlyMessage,
    required TResult Function(_Failure value) failure,
  }) {
    return successAccountType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessAccountType value)? successAccountType,
    TResult? Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult? Function(_Failure value)? failure,
  }) {
    return successAccountType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessAccountType value)? successAccountType,
    TResult Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successAccountType != null) {
      return successAccountType(this);
    }
    return orElse();
  }
}

abstract class _SuccessAccountType implements AccountTypeState {
  const factory _SuccessAccountType(
      final AccountTypeEntity? accountTypeEntity) = _$SuccessAccountTypeImpl;

  AccountTypeEntity? get accountTypeEntity;

  /// Create a copy of AccountTypeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessAccountTypeImplCopyWith<_$SuccessAccountTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$AccountTypeStateCopyWithImpl<$Res, _$SuccessOnlyMessageImpl>
    implements _$$SuccessOnlyMessageImplCopyWith<$Res> {
  __$$SuccessOnlyMessageImplCopyWithImpl(_$SuccessOnlyMessageImpl _value,
      $Res Function(_$SuccessOnlyMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountTypeState
  /// with the given fields replaced by the non-null parameter values.
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
    return 'AccountTypeState.successOnlyMessage(successMessage: $successMessage)';
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

  /// Create a copy of AccountTypeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(AccountTypeEntity? accountTypeEntity)
        successAccountType,
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
    TResult? Function(AccountTypeEntity? accountTypeEntity)? successAccountType,
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
    TResult Function(AccountTypeEntity? accountTypeEntity)? successAccountType,
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
    required TResult Function(_SuccessAccountType value) successAccountType,
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
    TResult? Function(_SuccessAccountType value)? successAccountType,
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
    TResult Function(_SuccessAccountType value)? successAccountType,
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

abstract class _SuccessOnlyMessage implements AccountTypeState {
  const factory _SuccessOnlyMessage(final String successMessage) =
      _$SuccessOnlyMessageImpl;

  String get successMessage;

  /// Create a copy of AccountTypeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    extends _$AccountTypeStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountTypeState
  /// with the given fields replaced by the non-null parameter values.
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
    return 'AccountTypeState.failure(message: $message)';
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

  /// Create a copy of AccountTypeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AccountTypeEntity? accountTypeEntity)
        successAccountType,
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
    TResult? Function(AccountTypeEntity? accountTypeEntity)? successAccountType,
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
    TResult Function(AccountTypeEntity? accountTypeEntity)? successAccountType,
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
    required TResult Function(_SuccessAccountType value) successAccountType,
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
    TResult? Function(_SuccessAccountType value)? successAccountType,
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
    TResult Function(_SuccessAccountType value)? successAccountType,
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

abstract class _Failure implements AccountTypeState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;

  /// Create a copy of AccountTypeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
