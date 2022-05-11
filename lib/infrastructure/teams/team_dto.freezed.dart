// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'team_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeamDTO _$TeamDTOFromJson(Map<String, dynamic> json) {
  return _TeamDTO.fromJson(json);
}

/// @nodoc
mixin _$TeamDTO {
  String get id => throw _privateConstructorUsedError;
  String get teamname => throw _privateConstructorUsedError;
  List<String> get joinedUsers => throw _privateConstructorUsedError;
  List<String> get admins => throw _privateConstructorUsedError;
  List<String> get workoutCreator => throw _privateConstructorUsedError;
  List<String> get analysts => throw _privateConstructorUsedError;
  List<String> get athletes => throw _privateConstructorUsedError;
  List<WorkoutDTO> get workouts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamDTOCopyWith<TeamDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamDTOCopyWith<$Res> {
  factory $TeamDTOCopyWith(TeamDTO value, $Res Function(TeamDTO) then) =
      _$TeamDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String teamname,
      List<String> joinedUsers,
      List<String> admins,
      List<String> workoutCreator,
      List<String> analysts,
      List<String> athletes,
      List<WorkoutDTO> workouts});
}

/// @nodoc
class _$TeamDTOCopyWithImpl<$Res> implements $TeamDTOCopyWith<$Res> {
  _$TeamDTOCopyWithImpl(this._value, this._then);

  final TeamDTO _value;
  // ignore: unused_field
  final $Res Function(TeamDTO) _then;

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
              as String,
      teamname: teamname == freezed
          ? _value.teamname
          : teamname // ignore: cast_nullable_to_non_nullable
              as String,
      joinedUsers: joinedUsers == freezed
          ? _value.joinedUsers
          : joinedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      admins: admins == freezed
          ? _value.admins
          : admins // ignore: cast_nullable_to_non_nullable
              as List<String>,
      workoutCreator: workoutCreator == freezed
          ? _value.workoutCreator
          : workoutCreator // ignore: cast_nullable_to_non_nullable
              as List<String>,
      analysts: analysts == freezed
          ? _value.analysts
          : analysts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      athletes: athletes == freezed
          ? _value.athletes
          : athletes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      workouts: workouts == freezed
          ? _value.workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<WorkoutDTO>,
    ));
  }
}

/// @nodoc
abstract class _$$_TeamDTOCopyWith<$Res> implements $TeamDTOCopyWith<$Res> {
  factory _$$_TeamDTOCopyWith(
          _$_TeamDTO value, $Res Function(_$_TeamDTO) then) =
      __$$_TeamDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String teamname,
      List<String> joinedUsers,
      List<String> admins,
      List<String> workoutCreator,
      List<String> analysts,
      List<String> athletes,
      List<WorkoutDTO> workouts});
}

/// @nodoc
class __$$_TeamDTOCopyWithImpl<$Res> extends _$TeamDTOCopyWithImpl<$Res>
    implements _$$_TeamDTOCopyWith<$Res> {
  __$$_TeamDTOCopyWithImpl(_$_TeamDTO _value, $Res Function(_$_TeamDTO) _then)
      : super(_value, (v) => _then(v as _$_TeamDTO));

  @override
  _$_TeamDTO get _value => super._value as _$_TeamDTO;

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
    return _then(_$_TeamDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      teamname: teamname == freezed
          ? _value.teamname
          : teamname // ignore: cast_nullable_to_non_nullable
              as String,
      joinedUsers: joinedUsers == freezed
          ? _value._joinedUsers
          : joinedUsers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      admins: admins == freezed
          ? _value._admins
          : admins // ignore: cast_nullable_to_non_nullable
              as List<String>,
      workoutCreator: workoutCreator == freezed
          ? _value._workoutCreator
          : workoutCreator // ignore: cast_nullable_to_non_nullable
              as List<String>,
      analysts: analysts == freezed
          ? _value._analysts
          : analysts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      athletes: athletes == freezed
          ? _value._athletes
          : athletes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      workouts: workouts == freezed
          ? _value._workouts
          : workouts // ignore: cast_nullable_to_non_nullable
              as List<WorkoutDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeamDTO extends _TeamDTO {
  const _$_TeamDTO(
      {required this.id,
      required this.teamname,
      required final List<String> joinedUsers,
      required final List<String> admins,
      required final List<String> workoutCreator,
      required final List<String> analysts,
      required final List<String> athletes,
      required final List<WorkoutDTO> workouts})
      : _joinedUsers = joinedUsers,
        _admins = admins,
        _workoutCreator = workoutCreator,
        _analysts = analysts,
        _athletes = athletes,
        _workouts = workouts,
        super._();

  factory _$_TeamDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TeamDTOFromJson(json);

  @override
  final String id;
  @override
  final String teamname;
  final List<String> _joinedUsers;
  @override
  List<String> get joinedUsers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_joinedUsers);
  }

  final List<String> _admins;
  @override
  List<String> get admins {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_admins);
  }

  final List<String> _workoutCreator;
  @override
  List<String> get workoutCreator {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workoutCreator);
  }

  final List<String> _analysts;
  @override
  List<String> get analysts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_analysts);
  }

  final List<String> _athletes;
  @override
  List<String> get athletes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_athletes);
  }

  final List<WorkoutDTO> _workouts;
  @override
  List<WorkoutDTO> get workouts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workouts);
  }

  @override
  String toString() {
    return 'TeamDTO(id: $id, teamname: $teamname, joinedUsers: $joinedUsers, admins: $admins, workoutCreator: $workoutCreator, analysts: $analysts, athletes: $athletes, workouts: $workouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TeamDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.teamname, teamname) &&
            const DeepCollectionEquality()
                .equals(other._joinedUsers, _joinedUsers) &&
            const DeepCollectionEquality().equals(other._admins, _admins) &&
            const DeepCollectionEquality()
                .equals(other._workoutCreator, _workoutCreator) &&
            const DeepCollectionEquality().equals(other._analysts, _analysts) &&
            const DeepCollectionEquality().equals(other._athletes, _athletes) &&
            const DeepCollectionEquality().equals(other._workouts, _workouts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(teamname),
      const DeepCollectionEquality().hash(_joinedUsers),
      const DeepCollectionEquality().hash(_admins),
      const DeepCollectionEquality().hash(_workoutCreator),
      const DeepCollectionEquality().hash(_analysts),
      const DeepCollectionEquality().hash(_athletes),
      const DeepCollectionEquality().hash(_workouts));

  @JsonKey(ignore: true)
  @override
  _$$_TeamDTOCopyWith<_$_TeamDTO> get copyWith =>
      __$$_TeamDTOCopyWithImpl<_$_TeamDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamDTOToJson(this);
  }
}

abstract class _TeamDTO extends TeamDTO {
  const factory _TeamDTO(
      {required final String id,
      required final String teamname,
      required final List<String> joinedUsers,
      required final List<String> admins,
      required final List<String> workoutCreator,
      required final List<String> analysts,
      required final List<String> athletes,
      required final List<WorkoutDTO> workouts}) = _$_TeamDTO;
  const _TeamDTO._() : super._();

  factory _TeamDTO.fromJson(Map<String, dynamic> json) = _$_TeamDTO.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get teamname => throw _privateConstructorUsedError;
  @override
  List<String> get joinedUsers => throw _privateConstructorUsedError;
  @override
  List<String> get admins => throw _privateConstructorUsedError;
  @override
  List<String> get workoutCreator => throw _privateConstructorUsedError;
  @override
  List<String> get analysts => throw _privateConstructorUsedError;
  @override
  List<String> get athletes => throw _privateConstructorUsedError;
  @override
  List<WorkoutDTO> get workouts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TeamDTOCopyWith<_$_TeamDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
