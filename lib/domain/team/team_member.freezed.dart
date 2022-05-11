// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'team_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeamMember {
  UniqueId get id => throw _privateConstructorUsedError;
  bool get isAdmin => throw _privateConstructorUsedError;
  bool get isWorkoutCreator => throw _privateConstructorUsedError;
  bool get isAnalyst => throw _privateConstructorUsedError;
  bool get isAthlete => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamMemberCopyWith<TeamMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamMemberCopyWith<$Res> {
  factory $TeamMemberCopyWith(
          TeamMember value, $Res Function(TeamMember) then) =
      _$TeamMemberCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      bool isAdmin,
      bool isWorkoutCreator,
      bool isAnalyst,
      bool isAthlete});
}

/// @nodoc
class _$TeamMemberCopyWithImpl<$Res> implements $TeamMemberCopyWith<$Res> {
  _$TeamMemberCopyWithImpl(this._value, this._then);

  final TeamMember _value;
  // ignore: unused_field
  final $Res Function(TeamMember) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isAdmin = freezed,
    Object? isWorkoutCreator = freezed,
    Object? isAnalyst = freezed,
    Object? isAthlete = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      isWorkoutCreator: isWorkoutCreator == freezed
          ? _value.isWorkoutCreator
          : isWorkoutCreator // ignore: cast_nullable_to_non_nullable
              as bool,
      isAnalyst: isAnalyst == freezed
          ? _value.isAnalyst
          : isAnalyst // ignore: cast_nullable_to_non_nullable
              as bool,
      isAthlete: isAthlete == freezed
          ? _value.isAthlete
          : isAthlete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_TeamMemberCopyWith<$Res>
    implements $TeamMemberCopyWith<$Res> {
  factory _$$_TeamMemberCopyWith(
          _$_TeamMember value, $Res Function(_$_TeamMember) then) =
      __$$_TeamMemberCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      bool isAdmin,
      bool isWorkoutCreator,
      bool isAnalyst,
      bool isAthlete});
}

/// @nodoc
class __$$_TeamMemberCopyWithImpl<$Res> extends _$TeamMemberCopyWithImpl<$Res>
    implements _$$_TeamMemberCopyWith<$Res> {
  __$$_TeamMemberCopyWithImpl(
      _$_TeamMember _value, $Res Function(_$_TeamMember) _then)
      : super(_value, (v) => _then(v as _$_TeamMember));

  @override
  _$_TeamMember get _value => super._value as _$_TeamMember;

  @override
  $Res call({
    Object? id = freezed,
    Object? isAdmin = freezed,
    Object? isWorkoutCreator = freezed,
    Object? isAnalyst = freezed,
    Object? isAthlete = freezed,
  }) {
    return _then(_$_TeamMember(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      isWorkoutCreator: isWorkoutCreator == freezed
          ? _value.isWorkoutCreator
          : isWorkoutCreator // ignore: cast_nullable_to_non_nullable
              as bool,
      isAnalyst: isAnalyst == freezed
          ? _value.isAnalyst
          : isAnalyst // ignore: cast_nullable_to_non_nullable
              as bool,
      isAthlete: isAthlete == freezed
          ? _value.isAthlete
          : isAthlete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TeamMember extends _TeamMember {
  const _$_TeamMember(
      {required this.id,
      required this.isAdmin,
      required this.isWorkoutCreator,
      required this.isAnalyst,
      required this.isAthlete})
      : super._();

  @override
  final UniqueId id;
  @override
  final bool isAdmin;
  @override
  final bool isWorkoutCreator;
  @override
  final bool isAnalyst;
  @override
  final bool isAthlete;

  @override
  String toString() {
    return 'TeamMember(id: $id, isAdmin: $isAdmin, isWorkoutCreator: $isWorkoutCreator, isAnalyst: $isAnalyst, isAthlete: $isAthlete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TeamMember &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.isAdmin, isAdmin) &&
            const DeepCollectionEquality()
                .equals(other.isWorkoutCreator, isWorkoutCreator) &&
            const DeepCollectionEquality().equals(other.isAnalyst, isAnalyst) &&
            const DeepCollectionEquality().equals(other.isAthlete, isAthlete));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(isAdmin),
      const DeepCollectionEquality().hash(isWorkoutCreator),
      const DeepCollectionEquality().hash(isAnalyst),
      const DeepCollectionEquality().hash(isAthlete));

  @JsonKey(ignore: true)
  @override
  _$$_TeamMemberCopyWith<_$_TeamMember> get copyWith =>
      __$$_TeamMemberCopyWithImpl<_$_TeamMember>(this, _$identity);
}

abstract class _TeamMember extends TeamMember {
  const factory _TeamMember(
      {required final UniqueId id,
      required final bool isAdmin,
      required final bool isWorkoutCreator,
      required final bool isAnalyst,
      required final bool isAthlete}) = _$_TeamMember;
  const _TeamMember._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  bool get isAdmin => throw _privateConstructorUsedError;
  @override
  bool get isWorkoutCreator => throw _privateConstructorUsedError;
  @override
  bool get isAnalyst => throw _privateConstructorUsedError;
  @override
  bool get isAthlete => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TeamMemberCopyWith<_$_TeamMember> get copyWith =>
      throw _privateConstructorUsedError;
}
