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
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function(BuildContext context) loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function(BuildContext context)? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function(BuildContext context)? loginWithApple,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) register,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function(BuildContext context) loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return register(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function(BuildContext context)? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return register?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function(BuildContext context)? loginWithApple,
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginWithEmailImplCopyWith<_$LoginWithEmailImpl> get copyWith =>
      __$$LoginWithEmailImplCopyWithImpl<_$LoginWithEmailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) register,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function(BuildContext context) loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return loginWithEmail(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function(BuildContext context)? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return loginWithEmail?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function(BuildContext context)? loginWithApple,
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function(BuildContext context) loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return loginWithLinkedin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function(BuildContext context)? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return loginWithLinkedin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function(BuildContext context)? loginWithApple,
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function(BuildContext context) loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return loginWithGithub();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function(BuildContext context)? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return loginWithGithub?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function(BuildContext context)? loginWithApple,
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function(BuildContext context) loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return loginWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function(BuildContext context)? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return loginWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function(BuildContext context)? loginWithApple,
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
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$LoginWithAppleImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginWithAppleImpl>
    implements _$$LoginWithAppleImplCopyWith<$Res> {
  __$$LoginWithAppleImplCopyWithImpl(
      _$LoginWithAppleImpl _value, $Res Function(_$LoginWithAppleImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$LoginWithAppleImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$LoginWithAppleImpl implements _LoginWithApple {
  const _$LoginWithAppleImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.loginWithApple(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithAppleImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginWithAppleImplCopyWith<_$LoginWithAppleImpl> get copyWith =>
      __$$LoginWithAppleImplCopyWithImpl<_$LoginWithAppleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) register,
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function(BuildContext context) loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return loginWithApple(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function(BuildContext context)? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return loginWithApple?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function(BuildContext context)? loginWithApple,
    TResult Function()? loggedIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loginWithApple != null) {
      return loginWithApple(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
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
  const factory _LoginWithApple({required final BuildContext context}) =
      _$LoginWithAppleImpl;

  BuildContext get context;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginWithAppleImplCopyWith<_$LoginWithAppleImpl> get copyWith =>
      throw _privateConstructorUsedError;
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function(BuildContext context) loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function(BuildContext context)? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function(BuildContext context)? loginWithApple,
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(String email, String password) loginWithEmail,
    required TResult Function() loginWithLinkedin,
    required TResult Function() loginWithGithub,
    required TResult Function() loginWithGoogle,
    required TResult Function(BuildContext context) loginWithApple,
    required TResult Function() loggedIn,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? register,
    TResult? Function(String email, String password)? loginWithEmail,
    TResult? Function()? loginWithLinkedin,
    TResult? Function()? loginWithGithub,
    TResult? Function()? loginWithGoogle,
    TResult? Function(BuildContext context)? loginWithApple,
    TResult? Function()? loggedIn,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? register,
    TResult Function(String email, String password)? loginWithEmail,
    TResult Function()? loginWithLinkedin,
    TResult Function()? loginWithGithub,
    TResult Function()? loginWithGoogle,
    TResult Function(BuildContext context)? loginWithApple,
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
    required TResult Function() successLogout,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailsEntity user)? success,
    TResult? Function()? successLogout,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailsEntity user)? success,
    TResult Function()? successLogout,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessLogout value) successLogout,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessLogout value)? successLogout,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessLogout value)? successLogout,
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

  /// Create a copy of AuthState
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
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function() successLogout,
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
    TResult? Function()? successLogout,
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
    TResult Function()? successLogout,
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
    required TResult Function(_SuccessLogout value) successLogout,
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
    TResult? Function(_SuccessLogout value)? successLogout,
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
    TResult Function(_SuccessLogout value)? successLogout,
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

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function() successLogout,
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
    TResult? Function()? successLogout,
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
    TResult Function()? successLogout,
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
    required TResult Function(_SuccessLogout value) successLogout,
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
    TResult? Function(_SuccessLogout value)? successLogout,
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
    TResult Function(_SuccessLogout value)? successLogout,
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

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function() successLogout,
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
    TResult? Function()? successLogout,
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
    TResult Function()? successLogout,
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
    required TResult Function(_SuccessLogout value) successLogout,
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
    TResult? Function(_SuccessLogout value)? successLogout,
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
    TResult Function(_SuccessLogout value)? successLogout,
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

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessLogoutImplCopyWith<$Res> {
  factory _$$SuccessLogoutImplCopyWith(
          _$SuccessLogoutImpl value, $Res Function(_$SuccessLogoutImpl) then) =
      __$$SuccessLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessLogoutImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessLogoutImpl>
    implements _$$SuccessLogoutImplCopyWith<$Res> {
  __$$SuccessLogoutImplCopyWithImpl(
      _$SuccessLogoutImpl _value, $Res Function(_$SuccessLogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessLogoutImpl implements _SuccessLogout {
  const _$SuccessLogoutImpl();

  @override
  String toString() {
    return 'AuthState.successLogout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserDetailsEntity user) success,
    required TResult Function() successLogout,
    required TResult Function(String message) failure,
  }) {
    return successLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserDetailsEntity user)? success,
    TResult? Function()? successLogout,
    TResult? Function(String message)? failure,
  }) {
    return successLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserDetailsEntity user)? success,
    TResult Function()? successLogout,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (successLogout != null) {
      return successLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessLogout value) successLogout,
    required TResult Function(_Failure value) failure,
  }) {
    return successLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessLogout value)? successLogout,
    TResult? Function(_Failure value)? failure,
  }) {
    return successLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessLogout value)? successLogout,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successLogout != null) {
      return successLogout(this);
    }
    return orElse();
  }
}

abstract class _SuccessLogout implements AuthState {
  const factory _SuccessLogout() = _$SuccessLogoutImpl;
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

  /// Create a copy of AuthState
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

  /// Create a copy of AuthState
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
    required TResult Function(UserDetailsEntity user) success,
    required TResult Function() successLogout,
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
    TResult? Function()? successLogout,
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
    TResult Function()? successLogout,
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
    required TResult Function(_SuccessLogout value) successLogout,
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
    TResult? Function(_SuccessLogout value)? successLogout,
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
    TResult Function(_SuccessLogout value)? successLogout,
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

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
