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
  JoinedUsers<dynamic> get joinedUsers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res>;
  $Res call({UniqueId id, Teamname teamname, JoinedUsers<dynamic> joinedUsers});
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
              as JoinedUsers<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$TeamCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$TeamCopyWith(_Team value, $Res Function(_Team) then) =
      __$TeamCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, Teamname teamname, JoinedUsers<dynamic> joinedUsers});
}

/// @nodoc
class __$TeamCopyWithImpl<$Res> extends _$TeamCopyWithImpl<$Res>
    implements _$TeamCopyWith<$Res> {
  __$TeamCopyWithImpl(_Team _value, $Res Function(_Team) _then)
      : super(_value, (v) => _then(v as _Team));

  @override
  _Team get _value => super._value as _Team;

  @override
  $Res call({
    Object? id = freezed,
    Object? teamname = freezed,
    Object? joinedUsers = freezed,
  }) {
    return _then(_Team(
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
              as JoinedUsers<dynamic>,
    ));
  }
}

/// @nodoc

class _$_Team extends _Team {
  const _$_Team(
      {required this.id, required this.teamname, required this.joinedUsers})
      : super._();

  @override
  final UniqueId id;
  @override
  final Teamname teamname;
  @override
  final JoinedUsers<dynamic> joinedUsers;

  @override
  String toString() {
    return 'Team(id: $id, teamname: $teamname, joinedUsers: $joinedUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Team &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.teamname, teamname) &&
            const DeepCollectionEquality()
                .equals(other.joinedUsers, joinedUsers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(teamname),
      const DeepCollectionEquality().hash(joinedUsers));

  @JsonKey(ignore: true)
  @override
  _$TeamCopyWith<_Team> get copyWith =>
      __$TeamCopyWithImpl<_Team>(this, _$identity);
}

abstract class _Team extends Team {
  const factory _Team(
      {required final UniqueId id,
      required final Teamname teamname,
      required final JoinedUsers<dynamic> joinedUsers}) = _$_Team;
  const _Team._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  Teamname get teamname => throw _privateConstructorUsedError;
  @override
  JoinedUsers<dynamic> get joinedUsers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TeamCopyWith<_Team> get copyWith => throw _privateConstructorUsedError;
}
