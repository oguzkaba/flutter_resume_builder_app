// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skill_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SkillEntity _$SkillEntityFromJson(Map<String, dynamic> json) {
  return _SkillEntity.fromJson(json);
}

/// @nodoc
mixin _$SkillEntity {
  String get skillName => throw _privateConstructorUsedError;
  SkillType get skillType => throw _privateConstructorUsedError;
  SkillLevel get skillLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkillEntityCopyWith<SkillEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkillEntityCopyWith<$Res> {
  factory $SkillEntityCopyWith(
          SkillEntity value, $Res Function(SkillEntity) then) =
      _$SkillEntityCopyWithImpl<$Res, SkillEntity>;
  @useResult
  $Res call({String skillName, SkillType skillType, SkillLevel skillLevel});
}

/// @nodoc
class _$SkillEntityCopyWithImpl<$Res, $Val extends SkillEntity>
    implements $SkillEntityCopyWith<$Res> {
  _$SkillEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skillName = null,
    Object? skillType = null,
    Object? skillLevel = null,
  }) {
    return _then(_value.copyWith(
      skillName: null == skillName
          ? _value.skillName
          : skillName // ignore: cast_nullable_to_non_nullable
              as String,
      skillType: null == skillType
          ? _value.skillType
          : skillType // ignore: cast_nullable_to_non_nullable
              as SkillType,
      skillLevel: null == skillLevel
          ? _value.skillLevel
          : skillLevel // ignore: cast_nullable_to_non_nullable
              as SkillLevel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SkillEntityImplCopyWith<$Res>
    implements $SkillEntityCopyWith<$Res> {
  factory _$$SkillEntityImplCopyWith(
          _$SkillEntityImpl value, $Res Function(_$SkillEntityImpl) then) =
      __$$SkillEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String skillName, SkillType skillType, SkillLevel skillLevel});
}

/// @nodoc
class __$$SkillEntityImplCopyWithImpl<$Res>
    extends _$SkillEntityCopyWithImpl<$Res, _$SkillEntityImpl>
    implements _$$SkillEntityImplCopyWith<$Res> {
  __$$SkillEntityImplCopyWithImpl(
      _$SkillEntityImpl _value, $Res Function(_$SkillEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skillName = null,
    Object? skillType = null,
    Object? skillLevel = null,
  }) {
    return _then(_$SkillEntityImpl(
      skillName: null == skillName
          ? _value.skillName
          : skillName // ignore: cast_nullable_to_non_nullable
              as String,
      skillType: null == skillType
          ? _value.skillType
          : skillType // ignore: cast_nullable_to_non_nullable
              as SkillType,
      skillLevel: null == skillLevel
          ? _value.skillLevel
          : skillLevel // ignore: cast_nullable_to_non_nullable
              as SkillLevel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SkillEntityImpl implements _SkillEntity {
  const _$SkillEntityImpl(
      {required this.skillName,
      required this.skillType,
      required this.skillLevel});

  factory _$SkillEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SkillEntityImplFromJson(json);

  @override
  final String skillName;
  @override
  final SkillType skillType;
  @override
  final SkillLevel skillLevel;

  @override
  String toString() {
    return 'SkillEntity(skillName: $skillName, skillType: $skillType, skillLevel: $skillLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkillEntityImpl &&
            (identical(other.skillName, skillName) ||
                other.skillName == skillName) &&
            (identical(other.skillType, skillType) ||
                other.skillType == skillType) &&
            (identical(other.skillLevel, skillLevel) ||
                other.skillLevel == skillLevel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, skillName, skillType, skillLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SkillEntityImplCopyWith<_$SkillEntityImpl> get copyWith =>
      __$$SkillEntityImplCopyWithImpl<_$SkillEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SkillEntityImplToJson(
      this,
    );
  }
}

abstract class _SkillEntity implements SkillEntity {
  const factory _SkillEntity(
      {required final String skillName,
      required final SkillType skillType,
      required final SkillLevel skillLevel}) = _$SkillEntityImpl;

  factory _SkillEntity.fromJson(Map<String, dynamic> json) =
      _$SkillEntityImpl.fromJson;

  @override
  String get skillName;
  @override
  SkillType get skillType;
  @override
  SkillLevel get skillLevel;
  @override
  @JsonKey(ignore: true)
  _$$SkillEntityImplCopyWith<_$SkillEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
