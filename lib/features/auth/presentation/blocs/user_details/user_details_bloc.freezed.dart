// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        addUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        updateUserDetails,
    required TResult Function(int id) deleteUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? updateUserDetails,
    TResult? Function(int id)? deleteUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? updateUserDetails,
    TResult Function(int id)? deleteUserDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserDetails value) getUserDetails,
    required TResult Function(_AddUserDetails value) addUserDetails,
    required TResult Function(_UpdateUserDetails value) updateUserDetails,
    required TResult Function(_DeleteUserDetails value) deleteUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserDetails value)? getUserDetails,
    TResult? Function(_AddUserDetails value)? addUserDetails,
    TResult? Function(_UpdateUserDetails value)? updateUserDetails,
    TResult? Function(_DeleteUserDetails value)? deleteUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserDetails value)? getUserDetails,
    TResult Function(_AddUserDetails value)? addUserDetails,
    TResult Function(_UpdateUserDetails value)? updateUserDetails,
    TResult Function(_DeleteUserDetails value)? deleteUserDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsEventCopyWith<$Res> {
  factory $UserDetailsEventCopyWith(
          UserDetailsEvent value, $Res Function(UserDetailsEvent) then) =
      _$UserDetailsEventCopyWithImpl<$Res, UserDetailsEvent>;
}

/// @nodoc
class _$UserDetailsEventCopyWithImpl<$Res, $Val extends UserDetailsEvent>
    implements $UserDetailsEventCopyWith<$Res> {
  _$UserDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUserDetailsImplCopyWith<$Res> {
  factory _$$GetUserDetailsImplCopyWith(_$GetUserDetailsImpl value,
          $Res Function(_$GetUserDetailsImpl) then) =
      __$$GetUserDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetUserDetailsImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$GetUserDetailsImpl>
    implements _$$GetUserDetailsImplCopyWith<$Res> {
  __$$GetUserDetailsImplCopyWithImpl(
      _$GetUserDetailsImpl _value, $Res Function(_$GetUserDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetUserDetailsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserDetailsImpl implements _GetUserDetails {
  const _$GetUserDetailsImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'UserDetailsEvent.getUserDetails(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserDetailsImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of UserDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserDetailsImplCopyWith<_$GetUserDetailsImpl> get copyWith =>
      __$$GetUserDetailsImplCopyWithImpl<_$GetUserDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        addUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        updateUserDetails,
    required TResult Function(int id) deleteUserDetails,
  }) {
    return getUserDetails(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? updateUserDetails,
    TResult? Function(int id)? deleteUserDetails,
  }) {
    return getUserDetails?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? updateUserDetails,
    TResult Function(int id)? deleteUserDetails,
    required TResult orElse(),
  }) {
    if (getUserDetails != null) {
      return getUserDetails(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserDetails value) getUserDetails,
    required TResult Function(_AddUserDetails value) addUserDetails,
    required TResult Function(_UpdateUserDetails value) updateUserDetails,
    required TResult Function(_DeleteUserDetails value) deleteUserDetails,
  }) {
    return getUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserDetails value)? getUserDetails,
    TResult? Function(_AddUserDetails value)? addUserDetails,
    TResult? Function(_UpdateUserDetails value)? updateUserDetails,
    TResult? Function(_DeleteUserDetails value)? deleteUserDetails,
  }) {
    return getUserDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserDetails value)? getUserDetails,
    TResult Function(_AddUserDetails value)? addUserDetails,
    TResult Function(_UpdateUserDetails value)? updateUserDetails,
    TResult Function(_DeleteUserDetails value)? deleteUserDetails,
    required TResult orElse(),
  }) {
    if (getUserDetails != null) {
      return getUserDetails(this);
    }
    return orElse();
  }
}

abstract class _GetUserDetails implements UserDetailsEvent {
  const factory _GetUserDetails({required final String userId}) =
      _$GetUserDetailsImpl;

  String get userId;

  /// Create a copy of UserDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserDetailsImplCopyWith<_$GetUserDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddUserDetailsImplCopyWith<$Res> {
  factory _$$AddUserDetailsImplCopyWith(_$AddUserDetailsImpl value,
          $Res Function(_$AddUserDetailsImpl) then) =
      __$$AddUserDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDetailsEntity userDetailsEntity});
}

/// @nodoc
class __$$AddUserDetailsImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$AddUserDetailsImpl>
    implements _$$AddUserDetailsImplCopyWith<$Res> {
  __$$AddUserDetailsImplCopyWithImpl(
      _$AddUserDetailsImpl _value, $Res Function(_$AddUserDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetailsEntity = null,
  }) {
    return _then(_$AddUserDetailsImpl(
      userDetailsEntity: null == userDetailsEntity
          ? _value.userDetailsEntity
          : userDetailsEntity // ignore: cast_nullable_to_non_nullable
              as UserDetailsEntity,
    ));
  }
}

/// @nodoc

class _$AddUserDetailsImpl implements _AddUserDetails {
  const _$AddUserDetailsImpl({required this.userDetailsEntity});

  @override
  final UserDetailsEntity userDetailsEntity;

  @override
  String toString() {
    return 'UserDetailsEvent.addUserDetails(userDetailsEntity: $userDetailsEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserDetailsImpl &&
            (identical(other.userDetailsEntity, userDetailsEntity) ||
                other.userDetailsEntity == userDetailsEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userDetailsEntity);

  /// Create a copy of UserDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserDetailsImplCopyWith<_$AddUserDetailsImpl> get copyWith =>
      __$$AddUserDetailsImplCopyWithImpl<_$AddUserDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        addUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        updateUserDetails,
    required TResult Function(int id) deleteUserDetails,
  }) {
    return addUserDetails(userDetailsEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? updateUserDetails,
    TResult? Function(int id)? deleteUserDetails,
  }) {
    return addUserDetails?.call(userDetailsEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? updateUserDetails,
    TResult Function(int id)? deleteUserDetails,
    required TResult orElse(),
  }) {
    if (addUserDetails != null) {
      return addUserDetails(userDetailsEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserDetails value) getUserDetails,
    required TResult Function(_AddUserDetails value) addUserDetails,
    required TResult Function(_UpdateUserDetails value) updateUserDetails,
    required TResult Function(_DeleteUserDetails value) deleteUserDetails,
  }) {
    return addUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserDetails value)? getUserDetails,
    TResult? Function(_AddUserDetails value)? addUserDetails,
    TResult? Function(_UpdateUserDetails value)? updateUserDetails,
    TResult? Function(_DeleteUserDetails value)? deleteUserDetails,
  }) {
    return addUserDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserDetails value)? getUserDetails,
    TResult Function(_AddUserDetails value)? addUserDetails,
    TResult Function(_UpdateUserDetails value)? updateUserDetails,
    TResult Function(_DeleteUserDetails value)? deleteUserDetails,
    required TResult orElse(),
  }) {
    if (addUserDetails != null) {
      return addUserDetails(this);
    }
    return orElse();
  }
}

abstract class _AddUserDetails implements UserDetailsEvent {
  const factory _AddUserDetails(
          {required final UserDetailsEntity userDetailsEntity}) =
      _$AddUserDetailsImpl;

  UserDetailsEntity get userDetailsEntity;

  /// Create a copy of UserDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddUserDetailsImplCopyWith<_$AddUserDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserDetailsImplCopyWith<$Res> {
  factory _$$UpdateUserDetailsImplCopyWith(_$UpdateUserDetailsImpl value,
          $Res Function(_$UpdateUserDetailsImpl) then) =
      __$$UpdateUserDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDetailsEntity userDetailsEntity});
}

/// @nodoc
class __$$UpdateUserDetailsImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$UpdateUserDetailsImpl>
    implements _$$UpdateUserDetailsImplCopyWith<$Res> {
  __$$UpdateUserDetailsImplCopyWithImpl(_$UpdateUserDetailsImpl _value,
      $Res Function(_$UpdateUserDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetailsEntity = null,
  }) {
    return _then(_$UpdateUserDetailsImpl(
      userDetailsEntity: null == userDetailsEntity
          ? _value.userDetailsEntity
          : userDetailsEntity // ignore: cast_nullable_to_non_nullable
              as UserDetailsEntity,
    ));
  }
}

/// @nodoc

class _$UpdateUserDetailsImpl implements _UpdateUserDetails {
  const _$UpdateUserDetailsImpl({required this.userDetailsEntity});

  @override
  final UserDetailsEntity userDetailsEntity;

  @override
  String toString() {
    return 'UserDetailsEvent.updateUserDetails(userDetailsEntity: $userDetailsEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserDetailsImpl &&
            (identical(other.userDetailsEntity, userDetailsEntity) ||
                other.userDetailsEntity == userDetailsEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userDetailsEntity);

  /// Create a copy of UserDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserDetailsImplCopyWith<_$UpdateUserDetailsImpl> get copyWith =>
      __$$UpdateUserDetailsImplCopyWithImpl<_$UpdateUserDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        addUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        updateUserDetails,
    required TResult Function(int id) deleteUserDetails,
  }) {
    return updateUserDetails(userDetailsEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? updateUserDetails,
    TResult? Function(int id)? deleteUserDetails,
  }) {
    return updateUserDetails?.call(userDetailsEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? updateUserDetails,
    TResult Function(int id)? deleteUserDetails,
    required TResult orElse(),
  }) {
    if (updateUserDetails != null) {
      return updateUserDetails(userDetailsEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserDetails value) getUserDetails,
    required TResult Function(_AddUserDetails value) addUserDetails,
    required TResult Function(_UpdateUserDetails value) updateUserDetails,
    required TResult Function(_DeleteUserDetails value) deleteUserDetails,
  }) {
    return updateUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserDetails value)? getUserDetails,
    TResult? Function(_AddUserDetails value)? addUserDetails,
    TResult? Function(_UpdateUserDetails value)? updateUserDetails,
    TResult? Function(_DeleteUserDetails value)? deleteUserDetails,
  }) {
    return updateUserDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserDetails value)? getUserDetails,
    TResult Function(_AddUserDetails value)? addUserDetails,
    TResult Function(_UpdateUserDetails value)? updateUserDetails,
    TResult Function(_DeleteUserDetails value)? deleteUserDetails,
    required TResult orElse(),
  }) {
    if (updateUserDetails != null) {
      return updateUserDetails(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserDetails implements UserDetailsEvent {
  const factory _UpdateUserDetails(
          {required final UserDetailsEntity userDetailsEntity}) =
      _$UpdateUserDetailsImpl;

  UserDetailsEntity get userDetailsEntity;

  /// Create a copy of UserDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUserDetailsImplCopyWith<_$UpdateUserDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteUserDetailsImplCopyWith<$Res> {
  factory _$$DeleteUserDetailsImplCopyWith(_$DeleteUserDetailsImpl value,
          $Res Function(_$DeleteUserDetailsImpl) then) =
      __$$DeleteUserDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteUserDetailsImplCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$DeleteUserDetailsImpl>
    implements _$$DeleteUserDetailsImplCopyWith<$Res> {
  __$$DeleteUserDetailsImplCopyWithImpl(_$DeleteUserDetailsImpl _value,
      $Res Function(_$DeleteUserDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteUserDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteUserDetailsImpl implements _DeleteUserDetails {
  const _$DeleteUserDetailsImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'UserDetailsEvent.deleteUserDetails(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUserDetailsImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of UserDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUserDetailsImplCopyWith<_$DeleteUserDetailsImpl> get copyWith =>
      __$$DeleteUserDetailsImplCopyWithImpl<_$DeleteUserDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        addUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        updateUserDetails,
    required TResult Function(int id) deleteUserDetails,
  }) {
    return deleteUserDetails(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? updateUserDetails,
    TResult? Function(int id)? deleteUserDetails,
  }) {
    return deleteUserDetails?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? updateUserDetails,
    TResult Function(int id)? deleteUserDetails,
    required TResult orElse(),
  }) {
    if (deleteUserDetails != null) {
      return deleteUserDetails(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUserDetails value) getUserDetails,
    required TResult Function(_AddUserDetails value) addUserDetails,
    required TResult Function(_UpdateUserDetails value) updateUserDetails,
    required TResult Function(_DeleteUserDetails value) deleteUserDetails,
  }) {
    return deleteUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUserDetails value)? getUserDetails,
    TResult? Function(_AddUserDetails value)? addUserDetails,
    TResult? Function(_UpdateUserDetails value)? updateUserDetails,
    TResult? Function(_DeleteUserDetails value)? deleteUserDetails,
  }) {
    return deleteUserDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUserDetails value)? getUserDetails,
    TResult Function(_AddUserDetails value)? addUserDetails,
    TResult Function(_UpdateUserDetails value)? updateUserDetails,
    TResult Function(_DeleteUserDetails value)? deleteUserDetails,
    required TResult orElse(),
  }) {
    if (deleteUserDetails != null) {
      return deleteUserDetails(this);
    }
    return orElse();
  }
}

abstract class _DeleteUserDetails implements UserDetailsEvent {
  const factory _DeleteUserDetails({required final int id}) =
      _$DeleteUserDetailsImpl;

  int get id;

  /// Create a copy of UserDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteUserDetailsImplCopyWith<_$DeleteUserDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        successUserDetails,
    required TResult Function(String successMessage) successOnlyMessage,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailsEntity userDetailsEntity)? successUserDetails,
    TResult? Function(String successMessage)? successOnlyMessage,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailsEntity userDetailsEntity)? successUserDetails,
    TResult Function(String successMessage)? successOnlyMessage,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessUserDetails value) successUserDetails,
    required TResult Function(_SuccessOnlyMessage value) successOnlyMessage,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessUserDetails value)? successUserDetails,
    TResult? Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessUserDetails value)? successUserDetails,
    TResult Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsStateCopyWith<$Res> {
  factory $UserDetailsStateCopyWith(
          UserDetailsState value, $Res Function(UserDetailsState) then) =
      _$UserDetailsStateCopyWithImpl<$Res, UserDetailsState>;
}

/// @nodoc
class _$UserDetailsStateCopyWithImpl<$Res, $Val extends UserDetailsState>
    implements $UserDetailsStateCopyWith<$Res> {
  _$UserDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDetailsState
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
    extends _$UserDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UserDetailsState.initial()';
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
    required TResult Function(UserDetailsEntity userDetailsEntity)
        successUserDetails,
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
    TResult? Function(UserDetailsEntity userDetailsEntity)? successUserDetails,
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
    TResult Function(UserDetailsEntity userDetailsEntity)? successUserDetails,
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
    required TResult Function(_SuccessUserDetails value) successUserDetails,
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
    TResult? Function(_SuccessUserDetails value)? successUserDetails,
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
    TResult Function(_SuccessUserDetails value)? successUserDetails,
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

abstract class _Initial implements UserDetailsState {
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
    extends _$UserDetailsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'UserDetailsState.loading()';
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
    required TResult Function(UserDetailsEntity userDetailsEntity)
        successUserDetails,
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
    TResult? Function(UserDetailsEntity userDetailsEntity)? successUserDetails,
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
    TResult Function(UserDetailsEntity userDetailsEntity)? successUserDetails,
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
    required TResult Function(_SuccessUserDetails value) successUserDetails,
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
    TResult? Function(_SuccessUserDetails value)? successUserDetails,
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
    TResult Function(_SuccessUserDetails value)? successUserDetails,
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

abstract class _Loading implements UserDetailsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessUserDetailsImplCopyWith<$Res> {
  factory _$$SuccessUserDetailsImplCopyWith(_$SuccessUserDetailsImpl value,
          $Res Function(_$SuccessUserDetailsImpl) then) =
      __$$SuccessUserDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDetailsEntity userDetailsEntity});
}

/// @nodoc
class __$$SuccessUserDetailsImplCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res, _$SuccessUserDetailsImpl>
    implements _$$SuccessUserDetailsImplCopyWith<$Res> {
  __$$SuccessUserDetailsImplCopyWithImpl(_$SuccessUserDetailsImpl _value,
      $Res Function(_$SuccessUserDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetailsEntity = null,
  }) {
    return _then(_$SuccessUserDetailsImpl(
      null == userDetailsEntity
          ? _value.userDetailsEntity
          : userDetailsEntity // ignore: cast_nullable_to_non_nullable
              as UserDetailsEntity,
    ));
  }
}

/// @nodoc

class _$SuccessUserDetailsImpl implements _SuccessUserDetails {
  const _$SuccessUserDetailsImpl(this.userDetailsEntity);

  @override
  final UserDetailsEntity userDetailsEntity;

  @override
  String toString() {
    return 'UserDetailsState.successUserDetails(userDetailsEntity: $userDetailsEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessUserDetailsImpl &&
            (identical(other.userDetailsEntity, userDetailsEntity) ||
                other.userDetailsEntity == userDetailsEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userDetailsEntity);

  /// Create a copy of UserDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessUserDetailsImplCopyWith<_$SuccessUserDetailsImpl> get copyWith =>
      __$$SuccessUserDetailsImplCopyWithImpl<_$SuccessUserDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        successUserDetails,
    required TResult Function(String successMessage) successOnlyMessage,
    required TResult Function(String message) failure,
  }) {
    return successUserDetails(userDetailsEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailsEntity userDetailsEntity)? successUserDetails,
    TResult? Function(String successMessage)? successOnlyMessage,
    TResult? Function(String message)? failure,
  }) {
    return successUserDetails?.call(userDetailsEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailsEntity userDetailsEntity)? successUserDetails,
    TResult Function(String successMessage)? successOnlyMessage,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (successUserDetails != null) {
      return successUserDetails(userDetailsEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessUserDetails value) successUserDetails,
    required TResult Function(_SuccessOnlyMessage value) successOnlyMessage,
    required TResult Function(_Failure value) failure,
  }) {
    return successUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessUserDetails value)? successUserDetails,
    TResult? Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult? Function(_Failure value)? failure,
  }) {
    return successUserDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessUserDetails value)? successUserDetails,
    TResult Function(_SuccessOnlyMessage value)? successOnlyMessage,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successUserDetails != null) {
      return successUserDetails(this);
    }
    return orElse();
  }
}

abstract class _SuccessUserDetails implements UserDetailsState {
  const factory _SuccessUserDetails(final UserDetailsEntity userDetailsEntity) =
      _$SuccessUserDetailsImpl;

  UserDetailsEntity get userDetailsEntity;

  /// Create a copy of UserDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessUserDetailsImplCopyWith<_$SuccessUserDetailsImpl> get copyWith =>
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
    extends _$UserDetailsStateCopyWithImpl<$Res, _$SuccessOnlyMessageImpl>
    implements _$$SuccessOnlyMessageImplCopyWith<$Res> {
  __$$SuccessOnlyMessageImplCopyWithImpl(_$SuccessOnlyMessageImpl _value,
      $Res Function(_$SuccessOnlyMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailsState
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
    return 'UserDetailsState.successOnlyMessage(successMessage: $successMessage)';
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

  /// Create a copy of UserDetailsState
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
    required TResult Function(UserDetailsEntity userDetailsEntity)
        successUserDetails,
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
    TResult? Function(UserDetailsEntity userDetailsEntity)? successUserDetails,
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
    TResult Function(UserDetailsEntity userDetailsEntity)? successUserDetails,
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
    required TResult Function(_SuccessUserDetails value) successUserDetails,
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
    TResult? Function(_SuccessUserDetails value)? successUserDetails,
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
    TResult Function(_SuccessUserDetails value)? successUserDetails,
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

abstract class _SuccessOnlyMessage implements UserDetailsState {
  const factory _SuccessOnlyMessage(final String successMessage) =
      _$SuccessOnlyMessageImpl;

  String get successMessage;

  /// Create a copy of UserDetailsState
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
    extends _$UserDetailsStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailsState
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
    return 'UserDetailsState.failure(message: $message)';
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

  /// Create a copy of UserDetailsState
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
    required TResult Function(UserDetailsEntity userDetailsEntity)
        successUserDetails,
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
    TResult? Function(UserDetailsEntity userDetailsEntity)? successUserDetails,
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
    TResult Function(UserDetailsEntity userDetailsEntity)? successUserDetails,
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
    required TResult Function(_SuccessUserDetails value) successUserDetails,
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
    TResult? Function(_SuccessUserDetails value)? successUserDetails,
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
    TResult Function(_SuccessUserDetails value)? successUserDetails,
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

abstract class _Failure implements UserDetailsState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;

  /// Create a copy of UserDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
