// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'team.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Team {
  UniqueId get id => throw _privateConstructorUsedError;
  Teamname get teamname => throw _privateConstructorUsedError;
  KtList<UniqueId> get joinedUsers => throw _privateConstructorUsedError;
  KtList<UniqueId> get admins => throw _privateConstructorUsedError;
  KtList<UniqueId> get workoutCreator => throw _privateConstructorUsedError;
  KtList<UniqueId> get analysts => throw _privateConstructorUsedError;
  KtList<UniqueId> get athletes => throw _privateConstructorUsedError;
  KtList<Workout> get workouts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      Teamname teamname,
      KtList<UniqueId> joinedUsers,
      KtList<UniqueId> admins,
      KtList<UniqueId> workoutCreator,
      KtList<UniqueId> analysts,
      KtList<UniqueId> athletes,
      KtList<Workout> workouts});
}

/// @nodoc
class _$TeamCopyWithImpl<$Res> implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

  final Team _value;
  // ignore: unused_field
  final $Res Function(Team) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? teamname = freezed,
    Object? joinedUsers = freezed,
    Object? admins = freezed,
    Object? workoutCreator = freezed,
    Object? analysts = freezed,
    Object? athletes = freezed,
    Object? workouts = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      teamname: teamname == freezed
          ? _value.teamname
          : teamname // ignore: cast_nullable_to_non_nullable
              as Teamname,
      joinedUsers: joinedUsers == freezed
          ? _value.joinedUsers
          : joinedUsers // ignore: cast_nullable_to_non_nullable
              as KtList<UniqueId>,
      admins: admins == freezed
          ? _value.admins
          : admins // ignore: cast_nullable_to_non_nullable
              as KtList<UniqueId>,
      workoutCreator: workoutCreator == freezed
          ? _value.workoutCreator
          : workoutCreator // ignore: cast_nullable_to_non_nullable
              as KtList<UniqueId>,
      analysts: analysts == freezed
          ? _value.analysts
          : analysts // ignore: cast_nullable_to_non_nullable
              as KtList<UniqueId>,
      athletes: athletes == freezed
          ? _value.athletes
          : athletes // ignore: cast_nullable_to_non_nullable
              as KtList<UniqueId>,
      workouts: workouts == freezed
          ? _value.workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as KtList<Workout>,
    ));
  }
}

/// @nodoc
abstract class _$$_TeamCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$$_TeamCopyWith(_$_Team value, $Res Function(_$_Team) then) =
      __$$_TeamCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      Teamname teamname,
      KtList<UniqueId> joinedUsers,
      KtList<UniqueId> admins,
      KtList<UniqueId> workoutCreator,
      KtList<UniqueId> analysts,
      KtList<UniqueId> athletes,
      KtList<Workout> workouts});
}

/// @nodoc
class __$$_TeamCopyWithImpl<$Res> extends _$TeamCopyWithImpl<$Res>
    implements _$$_TeamCopyWith<$Res> {
  __$$_TeamCopyWithImpl(_$_Team _value, $Res Function(_$_Team) _then)
      : super(_value, (v) => _then(v as _$_Team));

  @override
  _$_Team get _value => super._value as _$_Team;

  @override
  $Res call({
    Object? id = freezed,
    Object? teamname = freezed,
    Object? joinedUsers = freezed,
    Object? admins = freezed,
    Object? workoutCreator = freezed,
    Object? analysts = freezed,
    Object? athletes = freezed,
    Object? workouts = freezed,
  }) {
    return _then(_$_Team(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      teamname: teamname == freezed
          ? _value.teamname
          : teamname // ignore: cast_nullable_to_non_nullable
              as Teamname,
      joinedUsers: joinedUsers == freezed
          ? _value.joinedUsers
          : joinedUsers // ignore: cast_nullable_to_non_nullable
              as KtList<UniqueId>,
      admins: admins == freezed
          ? _value.admins
          : admins // ignore: cast_nullable_to_non_nullable
              as KtList<UniqueId>,
      workoutCreator: workoutCreator == freezed
          ? _value.workoutCreator
          : workoutCreator // ignore: cast_nullable_to_non_nullable
              as KtList<UniqueId>,
      analysts: analysts == freezed
          ? _value.analysts
          : analysts // ignore: cast_nullable_to_non_nullable
              as KtList<UniqueId>,
      athletes: athletes == freezed
          ? _value.athletes
          : athletes // ignore: cast_nullable_to_non_nullable
              as KtList<UniqueId>,
      workouts: workouts == freezed
          ? _value.workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as KtList<Workout>,
    ));
  }
}

/// @nodoc

class _$_Team extends _Team {
  const _$_Team(
      {required this.id,
      required this.teamname,
      required this.joinedUsers,
      required this.admins,
      required this.workoutCreator,
      required this.analysts,
      required this.athletes,
      required this.workouts})
      : super._();

  @override
  final UniqueId id;
  @override
  final Teamname teamname;
  @override
  final KtList<UniqueId> joinedUsers;
  @override
  final KtList<UniqueId> admins;
  @override
  final KtList<UniqueId> workoutCreator;
  @override
  final KtList<UniqueId> analysts;
  @override
  final KtList<UniqueId> athletes;
  @override
  final KtList<Workout> workouts;

  @override
  String toString() {
    return 'Team(id: $id, teamname: $teamname, joinedUsers: $joinedUsers, admins: $admins, workoutCreator: $workoutCreator, analysts: $analysts, athletes: $athletes, workouts: $workouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Team &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.teamname, teamname) &&
            const DeepCollectionEquality()
                .equals(other.joinedUsers, joinedUsers) &&
            const DeepCollectionEquality().equals(other.admins, admins) &&
            const DeepCollectionEquality()
                .equals(other.workoutCreator, workoutCreator) &&
            const DeepCollectionEquality().equals(other.analysts, analysts) &&
            const DeepCollectionEquality().equals(other.athletes, athletes) &&
            const DeepCollectionEquality().equals(other.workouts, workouts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(teamname),
      const DeepCollectionEquality().hash(joinedUsers),
      const DeepCollectionEquality().hash(admins),
      const DeepCollectionEquality().hash(workoutCreator),
      const DeepCollectionEquality().hash(analysts),
      const DeepCollectionEquality().hash(athletes),
      const DeepCollectionEquality().hash(workouts));

  @JsonKey(ignore: true)
  @override
  _$$_TeamCopyWith<_$_Team> get copyWith =>
      __$$_TeamCopyWithImpl<_$_Team>(this, _$identity);
}

abstract class _Team extends Team {
  const factory _Team(
      {required final UniqueId id,
      required final Teamname teamname,
      required final KtList<UniqueId> joinedUsers,
      required final KtList<UniqueId> admins,
      required final KtList<UniqueId> workoutCreator,
      required final KtList<UniqueId> analysts,
      required final KtList<UniqueId> athletes,
      required final KtList<Workout> workouts}) = _$_Team;
  const _Team._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  Teamname get teamname => throw _privateConstructorUsedError;
  @override
  KtList<UniqueId> get joinedUsers => throw _privateConstructorUsedError;
  @override
  KtList<UniqueId> get admins => throw _privateConstructorUsedError;
  @override
  KtList<UniqueId> get workoutCreator => throw _privateConstructorUsedError;
  @override
  KtList<UniqueId> get analysts => throw _privateConstructorUsedError;
  @override
  KtList<UniqueId> get athletes => throw _privateConstructorUsedError;
  @override
  KtList<Workout> get workouts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TeamCopyWith<_$_Team> get copyWith => throw _privateConstructorUsedError;
}
