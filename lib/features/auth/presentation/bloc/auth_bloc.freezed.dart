// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) register,
    required TResult Function(AccountTypeEnum accTypeEnum) getAccountType,
    required TResult Function(String userId) getSubscriptions,
    required TResult Function(String userId, String accType) addSubscriptions,
    required TResult Function(String userId) getUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        addUserDetails,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult? Function(String userId)? getSubscriptions,
    TResult? Function(String userId, String accType)? addSubscriptions,
    TResult? Function(String userId)? getUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult Function(String userId)? getSubscriptions,
    TResult Function(String userId, String accType)? addSubscriptions,
    TResult Function(String userId)? getUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_GetAccountType value) getAccountType,
    required TResult Function(_GetSubscriptions value) getSubscriptions,
    required TResult Function(_AddSubscriptions value) addSubscriptions,
    required TResult Function(_GetUserDetails value) getUserDetails,
    required TResult Function(_AddUserDetails value) addUserDetails,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_LoginWithLinkedin value) loginWithLinkedin,
    required TResult Function(_LoginWithGithub value) loginWithGithub,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_GetAccountType value)? getAccountType,
    TResult? Function(_GetSubscriptions value)? getSubscriptions,
    TResult? Function(_AddSubscriptions value)? addSubscriptions,
    TResult? Function(_GetUserDetails value)? getUserDetails,
    TResult? Function(_AddUserDetails value)? addUserDetails,
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult? Function(_LoginWithGithub value)? loginWithGithub,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_GetAccountType value)? getAccountType,
    TResult Function(_GetSubscriptions value)? getSubscriptions,
    TResult Function(_AddSubscriptions value)? addSubscriptions,
    TResult Function(_GetUserDetails value)? getUserDetails,
    TResult Function(_AddUserDetails value)? addUserDetails,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult Function(_LoginWithGithub value)? loginWithGithub,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$RegisterImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.register(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) register,
    required TResult Function(AccountTypeEnum accTypeEnum) getAccountType,
    required TResult Function(String userId) getSubscriptions,
    required TResult Function(String userId, String accType) addSubscriptions,
    required TResult Function(String userId) getUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        addUserDetails,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return register(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult? Function(String userId)? getSubscriptions,
    TResult? Function(String userId, String accType)? addSubscriptions,
    TResult? Function(String userId)? getUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return register?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult Function(String userId)? getSubscriptions,
    TResult Function(String userId, String accType)? addSubscriptions,
    TResult Function(String userId)? getUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_GetAccountType value) getAccountType,
    required TResult Function(_GetSubscriptions value) getSubscriptions,
    required TResult Function(_AddSubscriptions value) addSubscriptions,
    required TResult Function(_GetUserDetails value) getUserDetails,
    required TResult Function(_AddUserDetails value) addUserDetails,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_LoginWithLinkedin value) loginWithLinkedin,
    required TResult Function(_LoginWithGithub value) loginWithGithub,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Logout value) logout,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_GetAccountType value)? getAccountType,
    TResult? Function(_GetSubscriptions value)? getSubscriptions,
    TResult? Function(_AddSubscriptions value)? addSubscriptions,
    TResult? Function(_GetUserDetails value)? getUserDetails,
    TResult? Function(_AddUserDetails value)? addUserDetails,
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult? Function(_LoginWithGithub value)? loginWithGithub,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Logout value)? logout,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_GetAccountType value)? getAccountType,
    TResult Function(_GetSubscriptions value)? getSubscriptions,
    TResult Function(_AddSubscriptions value)? addSubscriptions,
    TResult Function(_GetUserDetails value)? getUserDetails,
    TResult Function(_AddUserDetails value)? addUserDetails,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult Function(_LoginWithGithub value)? loginWithGithub,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register(
      {required final String email,
      required final String password}) = _$RegisterImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAccountTypeImplCopyWith<$Res> {
  factory _$$GetAccountTypeImplCopyWith(_$GetAccountTypeImpl value,
          $Res Function(_$GetAccountTypeImpl) then) =
      __$$GetAccountTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountTypeEnum accTypeEnum});
}

/// @nodoc
class __$$GetAccountTypeImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetAccountTypeImpl>
    implements _$$GetAccountTypeImplCopyWith<$Res> {
  __$$GetAccountTypeImplCopyWithImpl(
      _$GetAccountTypeImpl _value, $Res Function(_$GetAccountTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accTypeEnum = null,
  }) {
    return _then(_$GetAccountTypeImpl(
      accTypeEnum: null == accTypeEnum
          ? _value.accTypeEnum
          : accTypeEnum // ignore: cast_nullable_to_non_nullable
              as AccountTypeEnum,
    ));
  }
}

/// @nodoc

class _$GetAccountTypeImpl implements _GetAccountType {
  const _$GetAccountTypeImpl({required this.accTypeEnum});

  @override
  final AccountTypeEnum accTypeEnum;

  @override
  String toString() {
    return 'AuthEvent.getAccountType(accTypeEnum: $accTypeEnum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccountTypeImpl &&
            (identical(other.accTypeEnum, accTypeEnum) ||
                other.accTypeEnum == accTypeEnum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accTypeEnum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAccountTypeImplCopyWith<_$GetAccountTypeImpl> get copyWith =>
      __$$GetAccountTypeImplCopyWithImpl<_$GetAccountTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) register,
    required TResult Function(AccountTypeEnum accTypeEnum) getAccountType,
    required TResult Function(String userId) getSubscriptions,
    required TResult Function(String userId, String accType) addSubscriptions,
    required TResult Function(String userId) getUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        addUserDetails,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return getAccountType(accTypeEnum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult? Function(String userId)? getSubscriptions,
    TResult? Function(String userId, String accType)? addSubscriptions,
    TResult? Function(String userId)? getUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return getAccountType?.call(accTypeEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult Function(String userId)? getSubscriptions,
    TResult Function(String userId, String accType)? addSubscriptions,
    TResult Function(String userId)? getUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (getAccountType != null) {
      return getAccountType(accTypeEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_GetAccountType value) getAccountType,
    required TResult Function(_GetSubscriptions value) getSubscriptions,
    required TResult Function(_AddSubscriptions value) addSubscriptions,
    required TResult Function(_GetUserDetails value) getUserDetails,
    required TResult Function(_AddUserDetails value) addUserDetails,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_LoginWithLinkedin value) loginWithLinkedin,
    required TResult Function(_LoginWithGithub value) loginWithGithub,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Logout value) logout,
  }) {
    return getAccountType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_GetAccountType value)? getAccountType,
    TResult? Function(_GetSubscriptions value)? getSubscriptions,
    TResult? Function(_AddSubscriptions value)? addSubscriptions,
    TResult? Function(_GetUserDetails value)? getUserDetails,
    TResult? Function(_AddUserDetails value)? addUserDetails,
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult? Function(_LoginWithGithub value)? loginWithGithub,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Logout value)? logout,
  }) {
    return getAccountType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_GetAccountType value)? getAccountType,
    TResult Function(_GetSubscriptions value)? getSubscriptions,
    TResult Function(_AddSubscriptions value)? addSubscriptions,
    TResult Function(_GetUserDetails value)? getUserDetails,
    TResult Function(_AddUserDetails value)? addUserDetails,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult Function(_LoginWithGithub value)? loginWithGithub,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (getAccountType != null) {
      return getAccountType(this);
    }
    return orElse();
  }
}

abstract class _GetAccountType implements AuthEvent {
  const factory _GetAccountType({required final AccountTypeEnum accTypeEnum}) =
      _$GetAccountTypeImpl;

  AccountTypeEnum get accTypeEnum;
  @JsonKey(ignore: true)
  _$$GetAccountTypeImplCopyWith<_$GetAccountTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$AuthEventCopyWithImpl<$Res, _$GetSubscriptionsImpl>
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
    return 'AuthEvent.getSubscriptions(userId: $userId)';
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
    required TResult Function(String email, String password) register,
    required TResult Function(AccountTypeEnum accTypeEnum) getAccountType,
    required TResult Function(String userId) getSubscriptions,
    required TResult Function(String userId, String accType) addSubscriptions,
    required TResult Function(String userId) getUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        addUserDetails,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return getSubscriptions(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult? Function(String userId)? getSubscriptions,
    TResult? Function(String userId, String accType)? addSubscriptions,
    TResult? Function(String userId)? getUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return getSubscriptions?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult Function(String userId)? getSubscriptions,
    TResult Function(String userId, String accType)? addSubscriptions,
    TResult Function(String userId)? getUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loggedIn,
    TResult Function()? logout,
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
    required TResult Function(_Register value) register,
    required TResult Function(_GetAccountType value) getAccountType,
    required TResult Function(_GetSubscriptions value) getSubscriptions,
    required TResult Function(_AddSubscriptions value) addSubscriptions,
    required TResult Function(_GetUserDetails value) getUserDetails,
    required TResult Function(_AddUserDetails value) addUserDetails,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_LoginWithLinkedin value) loginWithLinkedin,
    required TResult Function(_LoginWithGithub value) loginWithGithub,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Logout value) logout,
  }) {
    return getSubscriptions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_GetAccountType value)? getAccountType,
    TResult? Function(_GetSubscriptions value)? getSubscriptions,
    TResult? Function(_AddSubscriptions value)? addSubscriptions,
    TResult? Function(_GetUserDetails value)? getUserDetails,
    TResult? Function(_AddUserDetails value)? addUserDetails,
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult? Function(_LoginWithGithub value)? loginWithGithub,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Logout value)? logout,
  }) {
    return getSubscriptions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_GetAccountType value)? getAccountType,
    TResult Function(_GetSubscriptions value)? getSubscriptions,
    TResult Function(_AddSubscriptions value)? addSubscriptions,
    TResult Function(_GetUserDetails value)? getUserDetails,
    TResult Function(_AddUserDetails value)? addUserDetails,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult Function(_LoginWithGithub value)? loginWithGithub,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (getSubscriptions != null) {
      return getSubscriptions(this);
    }
    return orElse();
  }
}

abstract class _GetSubscriptions implements AuthEvent {
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
    extends _$AuthEventCopyWithImpl<$Res, _$AddSubscriptionsImpl>
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
    return 'AuthEvent.addSubscriptions(userId: $userId, accType: $accType)';
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
    required TResult Function(String email, String password) register,
    required TResult Function(AccountTypeEnum accTypeEnum) getAccountType,
    required TResult Function(String userId) getSubscriptions,
    required TResult Function(String userId, String accType) addSubscriptions,
    required TResult Function(String userId) getUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        addUserDetails,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return addSubscriptions(userId, accType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult? Function(String userId)? getSubscriptions,
    TResult? Function(String userId, String accType)? addSubscriptions,
    TResult? Function(String userId)? getUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return addSubscriptions?.call(userId, accType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult Function(String userId)? getSubscriptions,
    TResult Function(String userId, String accType)? addSubscriptions,
    TResult Function(String userId)? getUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loggedIn,
    TResult Function()? logout,
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
    required TResult Function(_Register value) register,
    required TResult Function(_GetAccountType value) getAccountType,
    required TResult Function(_GetSubscriptions value) getSubscriptions,
    required TResult Function(_AddSubscriptions value) addSubscriptions,
    required TResult Function(_GetUserDetails value) getUserDetails,
    required TResult Function(_AddUserDetails value) addUserDetails,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_LoginWithLinkedin value) loginWithLinkedin,
    required TResult Function(_LoginWithGithub value) loginWithGithub,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Logout value) logout,
  }) {
    return addSubscriptions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_GetAccountType value)? getAccountType,
    TResult? Function(_GetSubscriptions value)? getSubscriptions,
    TResult? Function(_AddSubscriptions value)? addSubscriptions,
    TResult? Function(_GetUserDetails value)? getUserDetails,
    TResult? Function(_AddUserDetails value)? addUserDetails,
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult? Function(_LoginWithGithub value)? loginWithGithub,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Logout value)? logout,
  }) {
    return addSubscriptions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_GetAccountType value)? getAccountType,
    TResult Function(_GetSubscriptions value)? getSubscriptions,
    TResult Function(_AddSubscriptions value)? addSubscriptions,
    TResult Function(_GetUserDetails value)? getUserDetails,
    TResult Function(_AddUserDetails value)? addUserDetails,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult Function(_LoginWithGithub value)? loginWithGithub,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (addSubscriptions != null) {
      return addSubscriptions(this);
    }
    return orElse();
  }
}

abstract class _AddSubscriptions implements AuthEvent {
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
abstract class _$$GetUserDetailsImplCopyWith<$Res> {
  factory _$$GetUserDetailsImplCopyWith(_$GetUserDetailsImpl value,
          $Res Function(_$GetUserDetailsImpl) then) =
      __$$GetUserDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetUserDetailsImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetUserDetailsImpl>
    implements _$$GetUserDetailsImplCopyWith<$Res> {
  __$$GetUserDetailsImplCopyWithImpl(
      _$GetUserDetailsImpl _value, $Res Function(_$GetUserDetailsImpl) _then)
      : super(_value, _then);

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
    return 'AuthEvent.getUserDetails(userId: $userId)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserDetailsImplCopyWith<_$GetUserDetailsImpl> get copyWith =>
      __$$GetUserDetailsImplCopyWithImpl<_$GetUserDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) register,
    required TResult Function(AccountTypeEnum accTypeEnum) getAccountType,
    required TResult Function(String userId) getSubscriptions,
    required TResult Function(String userId, String accType) addSubscriptions,
    required TResult Function(String userId) getUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        addUserDetails,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return getUserDetails(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult? Function(String userId)? getSubscriptions,
    TResult? Function(String userId, String accType)? addSubscriptions,
    TResult? Function(String userId)? getUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return getUserDetails?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult Function(String userId)? getSubscriptions,
    TResult Function(String userId, String accType)? addSubscriptions,
    TResult Function(String userId)? getUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loggedIn,
    TResult Function()? logout,
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
    required TResult Function(_Register value) register,
    required TResult Function(_GetAccountType value) getAccountType,
    required TResult Function(_GetSubscriptions value) getSubscriptions,
    required TResult Function(_AddSubscriptions value) addSubscriptions,
    required TResult Function(_GetUserDetails value) getUserDetails,
    required TResult Function(_AddUserDetails value) addUserDetails,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_LoginWithLinkedin value) loginWithLinkedin,
    required TResult Function(_LoginWithGithub value) loginWithGithub,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Logout value) logout,
  }) {
    return getUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_GetAccountType value)? getAccountType,
    TResult? Function(_GetSubscriptions value)? getSubscriptions,
    TResult? Function(_AddSubscriptions value)? addSubscriptions,
    TResult? Function(_GetUserDetails value)? getUserDetails,
    TResult? Function(_AddUserDetails value)? addUserDetails,
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult? Function(_LoginWithGithub value)? loginWithGithub,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Logout value)? logout,
  }) {
    return getUserDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_GetAccountType value)? getAccountType,
    TResult Function(_GetSubscriptions value)? getSubscriptions,
    TResult Function(_AddSubscriptions value)? addSubscriptions,
    TResult Function(_GetUserDetails value)? getUserDetails,
    TResult Function(_AddUserDetails value)? addUserDetails,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult Function(_LoginWithGithub value)? loginWithGithub,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (getUserDetails != null) {
      return getUserDetails(this);
    }
    return orElse();
  }
}

abstract class _GetUserDetails implements AuthEvent {
  const factory _GetUserDetails({required final String userId}) =
      _$GetUserDetailsImpl;

  String get userId;
  @JsonKey(ignore: true)
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
    extends _$AuthEventCopyWithImpl<$Res, _$AddUserDetailsImpl>
    implements _$$AddUserDetailsImplCopyWith<$Res> {
  __$$AddUserDetailsImplCopyWithImpl(
      _$AddUserDetailsImpl _value, $Res Function(_$AddUserDetailsImpl) _then)
      : super(_value, _then);

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
    return 'AuthEvent.addUserDetails(userDetailsEntity: $userDetailsEntity)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserDetailsImplCopyWith<_$AddUserDetailsImpl> get copyWith =>
      __$$AddUserDetailsImplCopyWithImpl<_$AddUserDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) register,
    required TResult Function(AccountTypeEnum accTypeEnum) getAccountType,
    required TResult Function(String userId) getSubscriptions,
    required TResult Function(String userId, String accType) addSubscriptions,
    required TResult Function(String userId) getUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        addUserDetails,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return addUserDetails(userDetailsEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult? Function(String userId)? getSubscriptions,
    TResult? Function(String userId, String accType)? addSubscriptions,
    TResult? Function(String userId)? getUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return addUserDetails?.call(userDetailsEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult Function(String userId)? getSubscriptions,
    TResult Function(String userId, String accType)? addSubscriptions,
    TResult Function(String userId)? getUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loggedIn,
    TResult Function()? logout,
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
    required TResult Function(_Register value) register,
    required TResult Function(_GetAccountType value) getAccountType,
    required TResult Function(_GetSubscriptions value) getSubscriptions,
    required TResult Function(_AddSubscriptions value) addSubscriptions,
    required TResult Function(_GetUserDetails value) getUserDetails,
    required TResult Function(_AddUserDetails value) addUserDetails,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_LoginWithLinkedin value) loginWithLinkedin,
    required TResult Function(_LoginWithGithub value) loginWithGithub,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Logout value) logout,
  }) {
    return addUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_GetAccountType value)? getAccountType,
    TResult? Function(_GetSubscriptions value)? getSubscriptions,
    TResult? Function(_AddSubscriptions value)? addSubscriptions,
    TResult? Function(_GetUserDetails value)? getUserDetails,
    TResult? Function(_AddUserDetails value)? addUserDetails,
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult? Function(_LoginWithGithub value)? loginWithGithub,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Logout value)? logout,
  }) {
    return addUserDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_GetAccountType value)? getAccountType,
    TResult Function(_GetSubscriptions value)? getSubscriptions,
    TResult Function(_AddSubscriptions value)? addSubscriptions,
    TResult Function(_GetUserDetails value)? getUserDetails,
    TResult Function(_AddUserDetails value)? addUserDetails,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult Function(_LoginWithGithub value)? loginWithGithub,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (addUserDetails != null) {
      return addUserDetails(this);
    }
    return orElse();
  }
}

abstract class _AddUserDetails implements AuthEvent {
  const factory _AddUserDetails(
          {required final UserDetailsEntity userDetailsEntity}) =
      _$AddUserDetailsImpl;

  UserDetailsEntity get userDetailsEntity;
  @JsonKey(ignore: true)
  _$$AddUserDetailsImplCopyWith<_$AddUserDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginWithEmailImplCopyWith<$Res> {
  factory _$$LoginWithEmailImplCopyWith(_$LoginWithEmailImpl value,
          $Res Function(_$LoginWithEmailImpl) then) =
      __$$LoginWithEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginWithEmailImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginWithEmailImpl>
    implements _$$LoginWithEmailImplCopyWith<$Res> {
  __$$LoginWithEmailImplCopyWithImpl(
      _$LoginWithEmailImpl _value, $Res Function(_$LoginWithEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginWithEmailImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginWithEmailImpl implements _LoginWithEmail {
  const _$LoginWithEmailImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginWithEmail(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithEmailImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginWithEmailImplCopyWith<_$LoginWithEmailImpl> get copyWith =>
      __$$LoginWithEmailImplCopyWithImpl<_$LoginWithEmailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) register,
    required TResult Function(AccountTypeEnum accTypeEnum) getAccountType,
    required TResult Function(String userId) getSubscriptions,
    required TResult Function(String userId, String accType) addSubscriptions,
    required TResult Function(String userId) getUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        addUserDetails,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return loginWithEmail(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult? Function(String userId)? getSubscriptions,
    TResult? Function(String userId, String accType)? addSubscriptions,
    TResult? Function(String userId)? getUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return loginWithEmail?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult Function(String userId)? getSubscriptions,
    TResult Function(String userId, String accType)? addSubscriptions,
    TResult Function(String userId)? getUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loginWithEmail != null) {
      return loginWithEmail(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_GetAccountType value) getAccountType,
    required TResult Function(_GetSubscriptions value) getSubscriptions,
    required TResult Function(_AddSubscriptions value) addSubscriptions,
    required TResult Function(_GetUserDetails value) getUserDetails,
    required TResult Function(_AddUserDetails value) addUserDetails,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_LoginWithLinkedin value) loginWithLinkedin,
    required TResult Function(_LoginWithGithub value) loginWithGithub,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Logout value) logout,
  }) {
    return loginWithEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_GetAccountType value)? getAccountType,
    TResult? Function(_GetSubscriptions value)? getSubscriptions,
    TResult? Function(_AddSubscriptions value)? addSubscriptions,
    TResult? Function(_GetUserDetails value)? getUserDetails,
    TResult? Function(_AddUserDetails value)? addUserDetails,
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult? Function(_LoginWithGithub value)? loginWithGithub,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Logout value)? logout,
  }) {
    return loginWithEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_GetAccountType value)? getAccountType,
    TResult Function(_GetSubscriptions value)? getSubscriptions,
    TResult Function(_AddSubscriptions value)? addSubscriptions,
    TResult Function(_GetUserDetails value)? getUserDetails,
    TResult Function(_AddUserDetails value)? addUserDetails,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult Function(_LoginWithGithub value)? loginWithGithub,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (loginWithEmail != null) {
      return loginWithEmail(this);
    }
    return orElse();
  }
}

abstract class _LoginWithEmail implements AuthEvent {
  const factory _LoginWithEmail(
      {required final String email,
      required final String password}) = _$LoginWithEmailImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginWithEmailImplCopyWith<_$LoginWithEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginWithLinkedinImplCopyWith<$Res> {
  factory _$$LoginWithLinkedinImplCopyWith(_$LoginWithLinkedinImpl value,
          $Res Function(_$LoginWithLinkedinImpl) then) =
      __$$LoginWithLinkedinImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginWithLinkedinImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginWithLinkedinImpl>
    implements _$$LoginWithLinkedinImplCopyWith<$Res> {
  __$$LoginWithLinkedinImplCopyWithImpl(_$LoginWithLinkedinImpl _value,
      $Res Function(_$LoginWithLinkedinImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginWithLinkedinImpl implements _LoginWithLinkedin {
  const _$LoginWithLinkedinImpl();

  @override
  String toString() {
    return 'AuthEvent.loginWithLinkedin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginWithLinkedinImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) register,
    required TResult Function(AccountTypeEnum accTypeEnum) getAccountType,
    required TResult Function(String userId) getSubscriptions,
    required TResult Function(String userId, String accType) addSubscriptions,
    required TResult Function(String userId) getUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        addUserDetails,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return loginWithLinkedin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult? Function(String userId)? getSubscriptions,
    TResult? Function(String userId, String accType)? addSubscriptions,
    TResult? Function(String userId)? getUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return loginWithLinkedin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult Function(String userId)? getSubscriptions,
    TResult Function(String userId, String accType)? addSubscriptions,
    TResult Function(String userId)? getUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loginWithLinkedin != null) {
      return loginWithLinkedin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_GetAccountType value) getAccountType,
    required TResult Function(_GetSubscriptions value) getSubscriptions,
    required TResult Function(_AddSubscriptions value) addSubscriptions,
    required TResult Function(_GetUserDetails value) getUserDetails,
    required TResult Function(_AddUserDetails value) addUserDetails,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_LoginWithLinkedin value) loginWithLinkedin,
    required TResult Function(_LoginWithGithub value) loginWithGithub,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Logout value) logout,
  }) {
    return loginWithLinkedin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_GetAccountType value)? getAccountType,
    TResult? Function(_GetSubscriptions value)? getSubscriptions,
    TResult? Function(_AddSubscriptions value)? addSubscriptions,
    TResult? Function(_GetUserDetails value)? getUserDetails,
    TResult? Function(_AddUserDetails value)? addUserDetails,
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult? Function(_LoginWithGithub value)? loginWithGithub,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Logout value)? logout,
  }) {
    return loginWithLinkedin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_GetAccountType value)? getAccountType,
    TResult Function(_GetSubscriptions value)? getSubscriptions,
    TResult Function(_AddSubscriptions value)? addSubscriptions,
    TResult Function(_GetUserDetails value)? getUserDetails,
    TResult Function(_AddUserDetails value)? addUserDetails,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult Function(_LoginWithGithub value)? loginWithGithub,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (loginWithLinkedin != null) {
      return loginWithLinkedin(this);
    }
    return orElse();
  }
}

abstract class _LoginWithLinkedin implements AuthEvent {
  const factory _LoginWithLinkedin() = _$LoginWithLinkedinImpl;
}

/// @nodoc
abstract class _$$LoginWithGithubImplCopyWith<$Res> {
  factory _$$LoginWithGithubImplCopyWith(_$LoginWithGithubImpl value,
          $Res Function(_$LoginWithGithubImpl) then) =
      __$$LoginWithGithubImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginWithGithubImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginWithGithubImpl>
    implements _$$LoginWithGithubImplCopyWith<$Res> {
  __$$LoginWithGithubImplCopyWithImpl(
      _$LoginWithGithubImpl _value, $Res Function(_$LoginWithGithubImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginWithGithubImpl implements _LoginWithGithub {
  const _$LoginWithGithubImpl();

  @override
  String toString() {
    return 'AuthEvent.loginWithGithub()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginWithGithubImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) register,
    required TResult Function(AccountTypeEnum accTypeEnum) getAccountType,
    required TResult Function(String userId) getSubscriptions,
    required TResult Function(String userId, String accType) addSubscriptions,
    required TResult Function(String userId) getUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        addUserDetails,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return loginWithGithub();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult? Function(String userId)? getSubscriptions,
    TResult? Function(String userId, String accType)? addSubscriptions,
    TResult? Function(String userId)? getUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return loginWithGithub?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult Function(String userId)? getSubscriptions,
    TResult Function(String userId, String accType)? addSubscriptions,
    TResult Function(String userId)? getUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loginWithGithub != null) {
      return loginWithGithub();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_GetAccountType value) getAccountType,
    required TResult Function(_GetSubscriptions value) getSubscriptions,
    required TResult Function(_AddSubscriptions value) addSubscriptions,
    required TResult Function(_GetUserDetails value) getUserDetails,
    required TResult Function(_AddUserDetails value) addUserDetails,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_LoginWithLinkedin value) loginWithLinkedin,
    required TResult Function(_LoginWithGithub value) loginWithGithub,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Logout value) logout,
  }) {
    return loginWithGithub(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_GetAccountType value)? getAccountType,
    TResult? Function(_GetSubscriptions value)? getSubscriptions,
    TResult? Function(_AddSubscriptions value)? addSubscriptions,
    TResult? Function(_GetUserDetails value)? getUserDetails,
    TResult? Function(_AddUserDetails value)? addUserDetails,
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult? Function(_LoginWithGithub value)? loginWithGithub,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Logout value)? logout,
  }) {
    return loginWithGithub?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_GetAccountType value)? getAccountType,
    TResult Function(_GetSubscriptions value)? getSubscriptions,
    TResult Function(_AddSubscriptions value)? addSubscriptions,
    TResult Function(_GetUserDetails value)? getUserDetails,
    TResult Function(_AddUserDetails value)? addUserDetails,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult Function(_LoginWithGithub value)? loginWithGithub,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (loginWithGithub != null) {
      return loginWithGithub(this);
    }
    return orElse();
  }
}

abstract class _LoginWithGithub implements AuthEvent {
  const factory _LoginWithGithub() = _$LoginWithGithubImpl;
}

/// @nodoc
abstract class _$$LoginWithGoogleImplCopyWith<$Res> {
  factory _$$LoginWithGoogleImplCopyWith(_$LoginWithGoogleImpl value,
          $Res Function(_$LoginWithGoogleImpl) then) =
      __$$LoginWithGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginWithGoogleImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginWithGoogleImpl>
    implements _$$LoginWithGoogleImplCopyWith<$Res> {
  __$$LoginWithGoogleImplCopyWithImpl(
      _$LoginWithGoogleImpl _value, $Res Function(_$LoginWithGoogleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginWithGoogleImpl implements _LoginWithGoogle {
  const _$LoginWithGoogleImpl();

  @override
  String toString() {
    return 'AuthEvent.loginWithGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginWithGoogleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) register,
    required TResult Function(AccountTypeEnum accTypeEnum) getAccountType,
    required TResult Function(String userId) getSubscriptions,
    required TResult Function(String userId, String accType) addSubscriptions,
    required TResult Function(String userId) getUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        addUserDetails,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return loginWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult? Function(String userId)? getSubscriptions,
    TResult? Function(String userId, String accType)? addSubscriptions,
    TResult? Function(String userId)? getUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return loginWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult Function(String userId)? getSubscriptions,
    TResult Function(String userId, String accType)? addSubscriptions,
    TResult Function(String userId)? getUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_GetAccountType value) getAccountType,
    required TResult Function(_GetSubscriptions value) getSubscriptions,
    required TResult Function(_AddSubscriptions value) addSubscriptions,
    required TResult Function(_GetUserDetails value) getUserDetails,
    required TResult Function(_AddUserDetails value) addUserDetails,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_LoginWithLinkedin value) loginWithLinkedin,
    required TResult Function(_LoginWithGithub value) loginWithGithub,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Logout value) logout,
  }) {
    return loginWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_GetAccountType value)? getAccountType,
    TResult? Function(_GetSubscriptions value)? getSubscriptions,
    TResult? Function(_AddSubscriptions value)? addSubscriptions,
    TResult? Function(_GetUserDetails value)? getUserDetails,
    TResult? Function(_AddUserDetails value)? addUserDetails,
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult? Function(_LoginWithGithub value)? loginWithGithub,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Logout value)? logout,
  }) {
    return loginWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_GetAccountType value)? getAccountType,
    TResult Function(_GetSubscriptions value)? getSubscriptions,
    TResult Function(_AddSubscriptions value)? addSubscriptions,
    TResult Function(_GetUserDetails value)? getUserDetails,
    TResult Function(_AddUserDetails value)? addUserDetails,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult Function(_LoginWithGithub value)? loginWithGithub,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (loginWithGoogle != null) {
      return loginWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _LoginWithGoogle implements AuthEvent {
  const factory _LoginWithGoogle() = _$LoginWithGoogleImpl;
}

/// @nodoc
abstract class _$$LoginWithAppleImplCopyWith<$Res> {
  factory _$$LoginWithAppleImplCopyWith(_$LoginWithAppleImpl value,
          $Res Function(_$LoginWithAppleImpl) then) =
      __$$LoginWithAppleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginWithAppleImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginWithAppleImpl>
    implements _$$LoginWithAppleImplCopyWith<$Res> {
  __$$LoginWithAppleImplCopyWithImpl(
      _$LoginWithAppleImpl _value, $Res Function(_$LoginWithAppleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginWithAppleImpl implements _LoginWithApple {
  const _$LoginWithAppleImpl();

  @override
  String toString() {
    return 'AuthEvent.loginWithApple()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginWithAppleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) register,
    required TResult Function(AccountTypeEnum accTypeEnum) getAccountType,
    required TResult Function(String userId) getSubscriptions,
    required TResult Function(String userId, String accType) addSubscriptions,
    required TResult Function(String userId) getUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        addUserDetails,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return loginWithApple();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult? Function(String userId)? getSubscriptions,
    TResult? Function(String userId, String accType)? addSubscriptions,
    TResult? Function(String userId)? getUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return loginWithApple?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult Function(String userId)? getSubscriptions,
    TResult Function(String userId, String accType)? addSubscriptions,
    TResult Function(String userId)? getUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loginWithApple != null) {
      return loginWithApple();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_GetAccountType value) getAccountType,
    required TResult Function(_GetSubscriptions value) getSubscriptions,
    required TResult Function(_AddSubscriptions value) addSubscriptions,
    required TResult Function(_GetUserDetails value) getUserDetails,
    required TResult Function(_AddUserDetails value) addUserDetails,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_LoginWithLinkedin value) loginWithLinkedin,
    required TResult Function(_LoginWithGithub value) loginWithGithub,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Logout value) logout,
  }) {
    return loginWithApple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_GetAccountType value)? getAccountType,
    TResult? Function(_GetSubscriptions value)? getSubscriptions,
    TResult? Function(_AddSubscriptions value)? addSubscriptions,
    TResult? Function(_GetUserDetails value)? getUserDetails,
    TResult? Function(_AddUserDetails value)? addUserDetails,
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult? Function(_LoginWithGithub value)? loginWithGithub,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Logout value)? logout,
  }) {
    return loginWithApple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_GetAccountType value)? getAccountType,
    TResult Function(_GetSubscriptions value)? getSubscriptions,
    TResult Function(_AddSubscriptions value)? addSubscriptions,
    TResult Function(_GetUserDetails value)? getUserDetails,
    TResult Function(_AddUserDetails value)? addUserDetails,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult Function(_LoginWithGithub value)? loginWithGithub,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (loginWithApple != null) {
      return loginWithApple(this);
    }
    return orElse();
  }
}

abstract class _LoginWithApple implements AuthEvent {
  const factory _LoginWithApple() = _$LoginWithAppleImpl;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedInImpl implements _LoggedIn {
  const _$LoggedInImpl();

  @override
  String toString() {
    return 'AuthEvent.loggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) register,
    required TResult Function(AccountTypeEnum accTypeEnum) getAccountType,
    required TResult Function(String userId) getSubscriptions,
    required TResult Function(String userId, String accType) addSubscriptions,
    required TResult Function(String userId) getUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        addUserDetails,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult? Function(String userId)? getSubscriptions,
    TResult? Function(String userId, String accType)? addSubscriptions,
    TResult? Function(String userId)? getUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult Function(String userId)? getSubscriptions,
    TResult Function(String userId, String accType)? addSubscriptions,
    TResult Function(String userId)? getUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_GetAccountType value) getAccountType,
    required TResult Function(_GetSubscriptions value) getSubscriptions,
    required TResult Function(_AddSubscriptions value) addSubscriptions,
    required TResult Function(_GetUserDetails value) getUserDetails,
    required TResult Function(_AddUserDetails value) addUserDetails,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_LoginWithLinkedin value) loginWithLinkedin,
    required TResult Function(_LoginWithGithub value) loginWithGithub,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Logout value) logout,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_GetAccountType value)? getAccountType,
    TResult? Function(_GetSubscriptions value)? getSubscriptions,
    TResult? Function(_AddSubscriptions value)? addSubscriptions,
    TResult? Function(_GetUserDetails value)? getUserDetails,
    TResult? Function(_AddUserDetails value)? addUserDetails,
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult? Function(_LoginWithGithub value)? loginWithGithub,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Logout value)? logout,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_GetAccountType value)? getAccountType,
    TResult Function(_GetSubscriptions value)? getSubscriptions,
    TResult Function(_AddSubscriptions value)? addSubscriptions,
    TResult Function(_GetUserDetails value)? getUserDetails,
    TResult Function(_AddUserDetails value)? addUserDetails,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult Function(_LoginWithGithub value)? loginWithGithub,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements AuthEvent {
  const factory _LoggedIn() = _$LoggedInImpl;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) register,
    required TResult Function(AccountTypeEnum accTypeEnum) getAccountType,
    required TResult Function(String userId) getSubscriptions,
    required TResult Function(String userId, String accType) addSubscriptions,
    required TResult Function(String userId) getUserDetails,
    required TResult Function(UserDetailsEntity userDetailsEntity)
        addUserDetails,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function() loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult? Function(String userId)? getSubscriptions,
    TResult? Function(String userId, String accType)? addSubscriptions,
    TResult? Function(String userId)? getUserDetails,
    TResult? Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function()? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(AccountTypeEnum accTypeEnum)? getAccountType,
    TResult Function(String userId)? getSubscriptions,
    TResult Function(String userId, String accType)? addSubscriptions,
    TResult Function(String userId)? getUserDetails,
    TResult Function(UserDetailsEntity userDetailsEntity)? addUserDetails,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function()? loginWithApple,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
    required TResult Function(_GetAccountType value) getAccountType,
    required TResult Function(_GetSubscriptions value) getSubscriptions,
    required TResult Function(_AddSubscriptions value) addSubscriptions,
    required TResult Function(_GetUserDetails value) getUserDetails,
    required TResult Function(_AddUserDetails value) addUserDetails,
    required TResult Function(_LoginWithEmail value) loginWithEmail,
    required TResult Function(_LoginWithLinkedin value) loginWithLinkedin,
    required TResult Function(_LoginWithGithub value) loginWithGithub,
    required TResult Function(_LoginWithGoogle value) loginWithGoogle,
    required TResult Function(_LoginWithApple value) loginWithApple,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
    TResult? Function(_GetAccountType value)? getAccountType,
    TResult? Function(_GetSubscriptions value)? getSubscriptions,
    TResult? Function(_AddSubscriptions value)? addSubscriptions,
    TResult? Function(_GetUserDetails value)? getUserDetails,
    TResult? Function(_AddUserDetails value)? addUserDetails,
    TResult? Function(_LoginWithEmail value)? loginWithEmail,
    TResult? Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult? Function(_LoginWithGithub value)? loginWithGithub,
    TResult? Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult? Function(_LoginWithApple value)? loginWithApple,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    TResult Function(_GetAccountType value)? getAccountType,
    TResult Function(_GetSubscriptions value)? getSubscriptions,
    TResult Function(_AddSubscriptions value)? addSubscriptions,
    TResult Function(_GetUserDetails value)? getUserDetails,
    TResult Function(_AddUserDetails value)? addUserDetails,
    TResult Function(_LoginWithEmail value)? loginWithEmail,
    TResult Function(_LoginWithLinkedin value)? loginWithLinkedin,
    TResult Function(_LoginWithGithub value)? loginWithGithub,
    TResult Function(_LoginWithGoogle value)? loginWithGoogle,
    TResult Function(_LoginWithApple value)? loginWithApple,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDetailsEntity user) success,
    required TResult Function(AccountTypeEntity accountType) successAccountType,
    required TResult Function(UserDetailsModel userDetailsModel)
        successAddUserDetails,
    required TResult Function(SubscriptionsEntity? subscriptions)
        successSubscriptions,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailsEntity user)? success,
    TResult? Function(AccountTypeEntity accountType)? successAccountType,
    TResult? Function(UserDetailsModel userDetailsModel)? successAddUserDetails,
    TResult? Function(SubscriptionsEntity? subscriptions)? successSubscriptions,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailsEntity user)? success,
    TResult Function(AccountTypeEntity accountType)? successAccountType,
    TResult Function(UserDetailsModel userDetailsModel)? successAddUserDetails,
    TResult Function(SubscriptionsEntity? subscriptions)? successSubscriptions,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessAccountType value) successAccountType,
    required TResult Function(_SuccessAddUserDetails value)
        successAddUserDetails,
    required TResult Function(_SuccessSubscriptions value) successSubscriptions,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAccountType value)? successAccountType,
    TResult? Function(_SuccessAddUserDetails value)? successAddUserDetails,
    TResult? Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAccountType value)? successAccountType,
    TResult Function(_SuccessAddUserDetails value)? successAddUserDetails,
    TResult Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AuthState.initial()';
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
    required TResult Function(UserDetailsEntity user) success,
    required TResult Function(AccountTypeEntity accountType) successAccountType,
    required TResult Function(UserDetailsModel userDetailsModel)
        successAddUserDetails,
    required TResult Function(SubscriptionsEntity? subscriptions)
        successSubscriptions,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailsEntity user)? success,
    TResult? Function(AccountTypeEntity accountType)? successAccountType,
    TResult? Function(UserDetailsModel userDetailsModel)? successAddUserDetails,
    TResult? Function(SubscriptionsEntity? subscriptions)? successSubscriptions,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailsEntity user)? success,
    TResult Function(AccountTypeEntity accountType)? successAccountType,
    TResult Function(UserDetailsModel userDetailsModel)? successAddUserDetails,
    TResult Function(SubscriptionsEntity? subscriptions)? successSubscriptions,
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
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessAccountType value) successAccountType,
    required TResult Function(_SuccessAddUserDetails value)
        successAddUserDetails,
    required TResult Function(_SuccessSubscriptions value) successSubscriptions,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAccountType value)? successAccountType,
    TResult? Function(_SuccessAddUserDetails value)? successAddUserDetails,
    TResult? Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAccountType value)? successAccountType,
    TResult Function(_SuccessAddUserDetails value)? successAddUserDetails,
    TResult Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
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
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'AuthState.loading()';
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
    required TResult Function(UserDetailsEntity user) success,
    required TResult Function(AccountTypeEntity accountType) successAccountType,
    required TResult Function(UserDetailsModel userDetailsModel)
        successAddUserDetails,
    required TResult Function(SubscriptionsEntity? subscriptions)
        successSubscriptions,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailsEntity user)? success,
    TResult? Function(AccountTypeEntity accountType)? successAccountType,
    TResult? Function(UserDetailsModel userDetailsModel)? successAddUserDetails,
    TResult? Function(SubscriptionsEntity? subscriptions)? successSubscriptions,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailsEntity user)? success,
    TResult Function(AccountTypeEntity accountType)? successAccountType,
    TResult Function(UserDetailsModel userDetailsModel)? successAddUserDetails,
    TResult Function(SubscriptionsEntity? subscriptions)? successSubscriptions,
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
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessAccountType value) successAccountType,
    required TResult Function(_SuccessAddUserDetails value)
        successAddUserDetails,
    required TResult Function(_SuccessSubscriptions value) successSubscriptions,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAccountType value)? successAccountType,
    TResult? Function(_SuccessAddUserDetails value)? successAddUserDetails,
    TResult? Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAccountType value)? successAccountType,
    TResult Function(_SuccessAddUserDetails value)? successAddUserDetails,
    TResult Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDetailsEntity user});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDetailsEntity,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.user);

  @override
  final UserDetailsEntity user;

  @override
  String toString() {
    return 'AuthState.success(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDetailsEntity user) success,
    required TResult Function(AccountTypeEntity accountType) successAccountType,
    required TResult Function(UserDetailsModel userDetailsModel)
        successAddUserDetails,
    required TResult Function(SubscriptionsEntity? subscriptions)
        successSubscriptions,
    required TResult Function(String message) failure,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailsEntity user)? success,
    TResult? Function(AccountTypeEntity accountType)? successAccountType,
    TResult? Function(UserDetailsModel userDetailsModel)? successAddUserDetails,
    TResult? Function(SubscriptionsEntity? subscriptions)? successSubscriptions,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailsEntity user)? success,
    TResult Function(AccountTypeEntity accountType)? successAccountType,
    TResult Function(UserDetailsModel userDetailsModel)? successAddUserDetails,
    TResult Function(SubscriptionsEntity? subscriptions)? successSubscriptions,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessAccountType value) successAccountType,
    required TResult Function(_SuccessAddUserDetails value)
        successAddUserDetails,
    required TResult Function(_SuccessSubscriptions value) successSubscriptions,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAccountType value)? successAccountType,
    TResult? Function(_SuccessAddUserDetails value)? successAddUserDetails,
    TResult? Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAccountType value)? successAccountType,
    TResult Function(_SuccessAddUserDetails value)? successAddUserDetails,
    TResult Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AuthState {
  const factory _Success(final UserDetailsEntity user) = _$SuccessImpl;

  UserDetailsEntity get user;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessAccountTypeImplCopyWith<$Res> {
  factory _$$SuccessAccountTypeImplCopyWith(_$SuccessAccountTypeImpl value,
          $Res Function(_$SuccessAccountTypeImpl) then) =
      __$$SuccessAccountTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountTypeEntity accountType});
}

/// @nodoc
class __$$SuccessAccountTypeImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessAccountTypeImpl>
    implements _$$SuccessAccountTypeImplCopyWith<$Res> {
  __$$SuccessAccountTypeImplCopyWithImpl(_$SuccessAccountTypeImpl _value,
      $Res Function(_$SuccessAccountTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountType = null,
  }) {
    return _then(_$SuccessAccountTypeImpl(
      null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as AccountTypeEntity,
    ));
  }
}

/// @nodoc

class _$SuccessAccountTypeImpl implements _SuccessAccountType {
  const _$SuccessAccountTypeImpl(this.accountType);

  @override
  final AccountTypeEntity accountType;

  @override
  String toString() {
    return 'AuthState.successAccountType(accountType: $accountType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessAccountTypeImpl &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountType);

  @JsonKey(ignore: true)
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
    required TResult Function(UserDetailsEntity user) success,
    required TResult Function(AccountTypeEntity accountType) successAccountType,
    required TResult Function(UserDetailsModel userDetailsModel)
        successAddUserDetails,
    required TResult Function(SubscriptionsEntity? subscriptions)
        successSubscriptions,
    required TResult Function(String message) failure,
  }) {
    return successAccountType(accountType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailsEntity user)? success,
    TResult? Function(AccountTypeEntity accountType)? successAccountType,
    TResult? Function(UserDetailsModel userDetailsModel)? successAddUserDetails,
    TResult? Function(SubscriptionsEntity? subscriptions)? successSubscriptions,
    TResult? Function(String message)? failure,
  }) {
    return successAccountType?.call(accountType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailsEntity user)? success,
    TResult Function(AccountTypeEntity accountType)? successAccountType,
    TResult Function(UserDetailsModel userDetailsModel)? successAddUserDetails,
    TResult Function(SubscriptionsEntity? subscriptions)? successSubscriptions,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (successAccountType != null) {
      return successAccountType(accountType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessAccountType value) successAccountType,
    required TResult Function(_SuccessAddUserDetails value)
        successAddUserDetails,
    required TResult Function(_SuccessSubscriptions value) successSubscriptions,
    required TResult Function(_Failure value) failure,
  }) {
    return successAccountType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAccountType value)? successAccountType,
    TResult? Function(_SuccessAddUserDetails value)? successAddUserDetails,
    TResult? Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult? Function(_Failure value)? failure,
  }) {
    return successAccountType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAccountType value)? successAccountType,
    TResult Function(_SuccessAddUserDetails value)? successAddUserDetails,
    TResult Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successAccountType != null) {
      return successAccountType(this);
    }
    return orElse();
  }
}

abstract class _SuccessAccountType implements AuthState {
  const factory _SuccessAccountType(final AccountTypeEntity accountType) =
      _$SuccessAccountTypeImpl;

  AccountTypeEntity get accountType;
  @JsonKey(ignore: true)
  _$$SuccessAccountTypeImplCopyWith<_$SuccessAccountTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessAddUserDetailsImplCopyWith<$Res> {
  factory _$$SuccessAddUserDetailsImplCopyWith(
          _$SuccessAddUserDetailsImpl value,
          $Res Function(_$SuccessAddUserDetailsImpl) then) =
      __$$SuccessAddUserDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDetailsModel userDetailsModel});
}

/// @nodoc
class __$$SuccessAddUserDetailsImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessAddUserDetailsImpl>
    implements _$$SuccessAddUserDetailsImplCopyWith<$Res> {
  __$$SuccessAddUserDetailsImplCopyWithImpl(_$SuccessAddUserDetailsImpl _value,
      $Res Function(_$SuccessAddUserDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userDetailsModel = null,
  }) {
    return _then(_$SuccessAddUserDetailsImpl(
      null == userDetailsModel
          ? _value.userDetailsModel
          : userDetailsModel // ignore: cast_nullable_to_non_nullable
              as UserDetailsModel,
    ));
  }
}

/// @nodoc

class _$SuccessAddUserDetailsImpl implements _SuccessAddUserDetails {
  const _$SuccessAddUserDetailsImpl(this.userDetailsModel);

  @override
  final UserDetailsModel userDetailsModel;

  @override
  String toString() {
    return 'AuthState.successAddUserDetails(userDetailsModel: $userDetailsModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessAddUserDetailsImpl &&
            (identical(other.userDetailsModel, userDetailsModel) ||
                other.userDetailsModel == userDetailsModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userDetailsModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessAddUserDetailsImplCopyWith<_$SuccessAddUserDetailsImpl>
      get copyWith => __$$SuccessAddUserDetailsImplCopyWithImpl<
          _$SuccessAddUserDetailsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDetailsEntity user) success,
    required TResult Function(AccountTypeEntity accountType) successAccountType,
    required TResult Function(UserDetailsModel userDetailsModel)
        successAddUserDetails,
    required TResult Function(SubscriptionsEntity? subscriptions)
        successSubscriptions,
    required TResult Function(String message) failure,
  }) {
    return successAddUserDetails(userDetailsModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailsEntity user)? success,
    TResult? Function(AccountTypeEntity accountType)? successAccountType,
    TResult? Function(UserDetailsModel userDetailsModel)? successAddUserDetails,
    TResult? Function(SubscriptionsEntity? subscriptions)? successSubscriptions,
    TResult? Function(String message)? failure,
  }) {
    return successAddUserDetails?.call(userDetailsModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailsEntity user)? success,
    TResult Function(AccountTypeEntity accountType)? successAccountType,
    TResult Function(UserDetailsModel userDetailsModel)? successAddUserDetails,
    TResult Function(SubscriptionsEntity? subscriptions)? successSubscriptions,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (successAddUserDetails != null) {
      return successAddUserDetails(userDetailsModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessAccountType value) successAccountType,
    required TResult Function(_SuccessAddUserDetails value)
        successAddUserDetails,
    required TResult Function(_SuccessSubscriptions value) successSubscriptions,
    required TResult Function(_Failure value) failure,
  }) {
    return successAddUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAccountType value)? successAccountType,
    TResult? Function(_SuccessAddUserDetails value)? successAddUserDetails,
    TResult? Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult? Function(_Failure value)? failure,
  }) {
    return successAddUserDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAccountType value)? successAccountType,
    TResult Function(_SuccessAddUserDetails value)? successAddUserDetails,
    TResult Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successAddUserDetails != null) {
      return successAddUserDetails(this);
    }
    return orElse();
  }
}

abstract class _SuccessAddUserDetails implements AuthState {
  const factory _SuccessAddUserDetails(
      final UserDetailsModel userDetailsModel) = _$SuccessAddUserDetailsImpl;

  UserDetailsModel get userDetailsModel;
  @JsonKey(ignore: true)
  _$$SuccessAddUserDetailsImplCopyWith<_$SuccessAddUserDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessSubscriptionsImplCopyWith<$Res> {
  factory _$$SuccessSubscriptionsImplCopyWith(_$SuccessSubscriptionsImpl value,
          $Res Function(_$SuccessSubscriptionsImpl) then) =
      __$$SuccessSubscriptionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SubscriptionsEntity? subscriptions});
}

/// @nodoc
class __$$SuccessSubscriptionsImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessSubscriptionsImpl>
    implements _$$SuccessSubscriptionsImplCopyWith<$Res> {
  __$$SuccessSubscriptionsImplCopyWithImpl(_$SuccessSubscriptionsImpl _value,
      $Res Function(_$SuccessSubscriptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptions = freezed,
  }) {
    return _then(_$SuccessSubscriptionsImpl(
      freezed == subscriptions
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as SubscriptionsEntity?,
    ));
  }
}

/// @nodoc

class _$SuccessSubscriptionsImpl implements _SuccessSubscriptions {
  const _$SuccessSubscriptionsImpl(this.subscriptions);

  @override
  final SubscriptionsEntity? subscriptions;

  @override
  String toString() {
    return 'AuthState.successSubscriptions(subscriptions: $subscriptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSubscriptionsImpl &&
            (identical(other.subscriptions, subscriptions) ||
                other.subscriptions == subscriptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subscriptions);

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
    required TResult Function(UserDetailsEntity user) success,
    required TResult Function(AccountTypeEntity accountType) successAccountType,
    required TResult Function(UserDetailsModel userDetailsModel)
        successAddUserDetails,
    required TResult Function(SubscriptionsEntity? subscriptions)
        successSubscriptions,
    required TResult Function(String message) failure,
  }) {
    return successSubscriptions(subscriptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailsEntity user)? success,
    TResult? Function(AccountTypeEntity accountType)? successAccountType,
    TResult? Function(UserDetailsModel userDetailsModel)? successAddUserDetails,
    TResult? Function(SubscriptionsEntity? subscriptions)? successSubscriptions,
    TResult? Function(String message)? failure,
  }) {
    return successSubscriptions?.call(subscriptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailsEntity user)? success,
    TResult Function(AccountTypeEntity accountType)? successAccountType,
    TResult Function(UserDetailsModel userDetailsModel)? successAddUserDetails,
    TResult Function(SubscriptionsEntity? subscriptions)? successSubscriptions,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (successSubscriptions != null) {
      return successSubscriptions(subscriptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessAccountType value) successAccountType,
    required TResult Function(_SuccessAddUserDetails value)
        successAddUserDetails,
    required TResult Function(_SuccessSubscriptions value) successSubscriptions,
    required TResult Function(_Failure value) failure,
  }) {
    return successSubscriptions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAccountType value)? successAccountType,
    TResult? Function(_SuccessAddUserDetails value)? successAddUserDetails,
    TResult? Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult? Function(_Failure value)? failure,
  }) {
    return successSubscriptions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAccountType value)? successAccountType,
    TResult Function(_SuccessAddUserDetails value)? successAddUserDetails,
    TResult Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successSubscriptions != null) {
      return successSubscriptions(this);
    }
    return orElse();
  }
}

abstract class _SuccessSubscriptions implements AuthState {
  const factory _SuccessSubscriptions(
      final SubscriptionsEntity? subscriptions) = _$SuccessSubscriptionsImpl;

  SubscriptionsEntity? get subscriptions;
  @JsonKey(ignore: true)
  _$$SuccessSubscriptionsImplCopyWith<_$SuccessSubscriptionsImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$AuthStateCopyWithImpl<$Res, _$FailureImpl>
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
    return 'AuthState.failure(message: $message)';
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
    required TResult Function(UserDetailsEntity user) success,
    required TResult Function(AccountTypeEntity accountType) successAccountType,
    required TResult Function(UserDetailsModel userDetailsModel)
        successAddUserDetails,
    required TResult Function(SubscriptionsEntity? subscriptions)
        successSubscriptions,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailsEntity user)? success,
    TResult? Function(AccountTypeEntity accountType)? successAccountType,
    TResult? Function(UserDetailsModel userDetailsModel)? successAddUserDetails,
    TResult? Function(SubscriptionsEntity? subscriptions)? successSubscriptions,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailsEntity user)? success,
    TResult Function(AccountTypeEntity accountType)? successAccountType,
    TResult Function(UserDetailsModel userDetailsModel)? successAddUserDetails,
    TResult Function(SubscriptionsEntity? subscriptions)? successSubscriptions,
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
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessAccountType value) successAccountType,
    required TResult Function(_SuccessAddUserDetails value)
        successAddUserDetails,
    required TResult Function(_SuccessSubscriptions value) successSubscriptions,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessAccountType value)? successAccountType,
    TResult? Function(_SuccessAddUserDetails value)? successAddUserDetails,
    TResult? Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessAccountType value)? successAccountType,
    TResult Function(_SuccessAddUserDetails value)? successAddUserDetails,
    TResult Function(_SuccessSubscriptions value)? successSubscriptions,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AuthState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
