// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'team_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeamEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId teamId) setTeamId,
    required TResult Function() navigateBackToFramework,
    required TResult Function() refreshWorkouts,
    required TResult Function() refreshUsers,
    required TResult Function(UniqueId teamMemberId) navigateToUserRights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId teamId)? setTeamId,
    TResult Function()? navigateBackToFramework,
    TResult Function()? refreshWorkouts,
    TResult Function()? refreshUsers,
    TResult Function(UniqueId teamMemberId)? navigateToUserRights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId teamId)? setTeamId,
    TResult Function()? navigateBackToFramework,
    TResult Function()? refreshWorkouts,
    TResult Function()? refreshUsers,
    TResult Function(UniqueId teamMemberId)? navigateToUserRights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetTeamId value) setTeamId,
    required TResult Function(NavigateBackToFramework value)
        navigateBackToFramework,
    required TResult Function(RefreshWorkouts value) refreshWorkouts,
    required TResult Function(RefreshUsers value) refreshUsers,
    required TResult Function(NavigateToUserRights value) navigateToUserRights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetTeamId value)? setTeamId,
    TResult Function(NavigateBackToFramework value)? navigateBackToFramework,
    TResult Function(RefreshWorkouts value)? refreshWorkouts,
    TResult Function(RefreshUsers value)? refreshUsers,
    TResult Function(NavigateToUserRights value)? navigateToUserRights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetTeamId value)? setTeamId,
    TResult Function(NavigateBackToFramework value)? navigateBackToFramework,
    TResult Function(RefreshWorkouts value)? refreshWorkouts,
    TResult Function(RefreshUsers value)? refreshUsers,
    TResult Function(NavigateToUserRights value)? navigateToUserRights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamEventCopyWith<$Res> {
  factory $TeamEventCopyWith(TeamEvent value, $Res Function(TeamEvent) then) =
      _$TeamEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TeamEventCopyWithImpl<$Res> implements $TeamEventCopyWith<$Res> {
  _$TeamEventCopyWithImpl(this._value, this._then);

  final TeamEvent _value;
  // ignore: unused_field
  final $Res Function(TeamEvent) _then;
}

/// @nodoc
abstract class _$$SetTeamIdCopyWith<$Res> {
  factory _$$SetTeamIdCopyWith(
          _$SetTeamId value, $Res Function(_$SetTeamId) then) =
      __$$SetTeamIdCopyWithImpl<$Res>;
  $Res call({UniqueId teamId});
}

/// @nodoc
class __$$SetTeamIdCopyWithImpl<$Res> extends _$TeamEventCopyWithImpl<$Res>
    implements _$$SetTeamIdCopyWith<$Res> {
  __$$SetTeamIdCopyWithImpl(
      _$SetTeamId _value, $Res Function(_$SetTeamId) _then)
      : super(_value, (v) => _then(v as _$SetTeamId));

  @override
  _$SetTeamId get _value => super._value as _$SetTeamId;

  @override
  $Res call({
    Object? teamId = freezed,
  }) {
    return _then(_$SetTeamId(
      teamId == freezed
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$SetTeamId implements SetTeamId {
  const _$SetTeamId(this.teamId);

  @override
  final UniqueId teamId;

  @override
  String toString() {
    return 'TeamEvent.setTeamId(teamId: $teamId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetTeamId &&
            const DeepCollectionEquality().equals(other.teamId, teamId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(teamId));

  @JsonKey(ignore: true)
  @override
  _$$SetTeamIdCopyWith<_$SetTeamId> get copyWith =>
      __$$SetTeamIdCopyWithImpl<_$SetTeamId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId teamId) setTeamId,
    required TResult Function() navigateBackToFramework,
    required TResult Function() refreshWorkouts,
    required TResult Function() refreshUsers,
    required TResult Function(UniqueId teamMemberId) navigateToUserRights,
  }) {
    return setTeamId(teamId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId teamId)? setTeamId,
    TResult Function()? navigateBackToFramework,
    TResult Function()? refreshWorkouts,
    TResult Function()? refreshUsers,
    TResult Function(UniqueId teamMemberId)? navigateToUserRights,
  }) {
    return setTeamId?.call(teamId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId teamId)? setTeamId,
    TResult Function()? navigateBackToFramework,
    TResult Function()? refreshWorkouts,
    TResult Function()? refreshUsers,
    TResult Function(UniqueId teamMemberId)? navigateToUserRights,
    required TResult orElse(),
  }) {
    if (setTeamId != null) {
      return setTeamId(teamId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetTeamId value) setTeamId,
    required TResult Function(NavigateBackToFramework value)
        navigateBackToFramework,
    required TResult Function(RefreshWorkouts value) refreshWorkouts,
    required TResult Function(RefreshUsers value) refreshUsers,
    required TResult Function(NavigateToUserRights value) navigateToUserRights,
  }) {
    return setTeamId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetTeamId value)? setTeamId,
    TResult Function(NavigateBackToFramework value)? navigateBackToFramework,
    TResult Function(RefreshWorkouts value)? refreshWorkouts,
    TResult Function(RefreshUsers value)? refreshUsers,
    TResult Function(NavigateToUserRights value)? navigateToUserRights,
  }) {
    return setTeamId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetTeamId value)? setTeamId,
    TResult Function(NavigateBackToFramework value)? navigateBackToFramework,
    TResult Function(RefreshWorkouts value)? refreshWorkouts,
    TResult Function(RefreshUsers value)? refreshUsers,
    TResult Function(NavigateToUserRights value)? navigateToUserRights,
    required TResult orElse(),
  }) {
    if (setTeamId != null) {
      return setTeamId(this);
    }
    return orElse();
  }
}

abstract class SetTeamId implements TeamEvent {
  const factory SetTeamId(final UniqueId teamId) = _$SetTeamId;

  UniqueId get teamId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SetTeamIdCopyWith<_$SetTeamId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NavigateBackToFrameworkCopyWith<$Res> {
  factory _$$NavigateBackToFrameworkCopyWith(_$NavigateBackToFramework value,
          $Res Function(_$NavigateBackToFramework) then) =
      __$$NavigateBackToFrameworkCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateBackToFrameworkCopyWithImpl<$Res>
    extends _$TeamEventCopyWithImpl<$Res>
    implements _$$NavigateBackToFrameworkCopyWith<$Res> {
  __$$NavigateBackToFrameworkCopyWithImpl(_$NavigateBackToFramework _value,
      $Res Function(_$NavigateBackToFramework) _then)
      : super(_value, (v) => _then(v as _$NavigateBackToFramework));

  @override
  _$NavigateBackToFramework get _value =>
      super._value as _$NavigateBackToFramework;
}

/// @nodoc

class _$NavigateBackToFramework implements NavigateBackToFramework {
  const _$NavigateBackToFramework();

  @override
  String toString() {
    return 'TeamEvent.navigateBackToFramework()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateBackToFramework);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId teamId) setTeamId,
    required TResult Function() navigateBackToFramework,
    required TResult Function() refreshWorkouts,
    required TResult Function() refreshUsers,
    required TResult Function(UniqueId teamMemberId) navigateToUserRights,
  }) {
    return navigateBackToFramework();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId teamId)? setTeamId,
    TResult Function()? navigateBackToFramework,
    TResult Function()? refreshWorkouts,
    TResult Function()? refreshUsers,
    TResult Function(UniqueId teamMemberId)? navigateToUserRights,
  }) {
    return navigateBackToFramework?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId teamId)? setTeamId,
    TResult Function()? navigateBackToFramework,
    TResult Function()? refreshWorkouts,
    TResult Function()? refreshUsers,
    TResult Function(UniqueId teamMemberId)? navigateToUserRights,
    required TResult orElse(),
  }) {
    if (navigateBackToFramework != null) {
      return navigateBackToFramework();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetTeamId value) setTeamId,
    required TResult Function(NavigateBackToFramework value)
        navigateBackToFramework,
    required TResult Function(RefreshWorkouts value) refreshWorkouts,
    required TResult Function(RefreshUsers value) refreshUsers,
    required TResult Function(NavigateToUserRights value) navigateToUserRights,
  }) {
    return navigateBackToFramework(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetTeamId value)? setTeamId,
    TResult Function(NavigateBackToFramework value)? navigateBackToFramework,
    TResult Function(RefreshWorkouts value)? refreshWorkouts,
    TResult Function(RefreshUsers value)? refreshUsers,
    TResult Function(NavigateToUserRights value)? navigateToUserRights,
  }) {
    return navigateBackToFramework?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetTeamId value)? setTeamId,
    TResult Function(NavigateBackToFramework value)? navigateBackToFramework,
    TResult Function(RefreshWorkouts value)? refreshWorkouts,
    TResult Function(RefreshUsers value)? refreshUsers,
    TResult Function(NavigateToUserRights value)? navigateToUserRights,
    required TResult orElse(),
  }) {
    if (navigateBackToFramework != null) {
      return navigateBackToFramework(this);
    }
    return orElse();
  }
}

abstract class NavigateBackToFramework implements TeamEvent {
  const factory NavigateBackToFramework() = _$NavigateBackToFramework;
}

/// @nodoc
abstract class _$$RefreshWorkoutsCopyWith<$Res> {
  factory _$$RefreshWorkoutsCopyWith(
          _$RefreshWorkouts value, $Res Function(_$RefreshWorkouts) then) =
      __$$RefreshWorkoutsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshWorkoutsCopyWithImpl<$Res>
    extends _$TeamEventCopyWithImpl<$Res>
    implements _$$RefreshWorkoutsCopyWith<$Res> {
  __$$RefreshWorkoutsCopyWithImpl(
      _$RefreshWorkouts _value, $Res Function(_$RefreshWorkouts) _then)
      : super(_value, (v) => _then(v as _$RefreshWorkouts));

  @override
  _$RefreshWorkouts get _value => super._value as _$RefreshWorkouts;
}

/// @nodoc

class _$RefreshWorkouts implements RefreshWorkouts {
  const _$RefreshWorkouts();

  @override
  String toString() {
    return 'TeamEvent.refreshWorkouts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshWorkouts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId teamId) setTeamId,
    required TResult Function() navigateBackToFramework,
    required TResult Function() refreshWorkouts,
    required TResult Function() refreshUsers,
    required TResult Function(UniqueId teamMemberId) navigateToUserRights,
  }) {
    return refreshWorkouts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId teamId)? setTeamId,
    TResult Function()? navigateBackToFramework,
    TResult Function()? refreshWorkouts,
    TResult Function()? refreshUsers,
    TResult Function(UniqueId teamMemberId)? navigateToUserRights,
  }) {
    return refreshWorkouts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId teamId)? setTeamId,
    TResult Function()? navigateBackToFramework,
    TResult Function()? refreshWorkouts,
    TResult Function()? refreshUsers,
    TResult Function(UniqueId teamMemberId)? navigateToUserRights,
    required TResult orElse(),
  }) {
    if (refreshWorkouts != null) {
      return refreshWorkouts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetTeamId value) setTeamId,
    required TResult Function(NavigateBackToFramework value)
        navigateBackToFramework,
    required TResult Function(RefreshWorkouts value) refreshWorkouts,
    required TResult Function(RefreshUsers value) refreshUsers,
    required TResult Function(NavigateToUserRights value) navigateToUserRights,
  }) {
    return refreshWorkouts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetTeamId value)? setTeamId,
    TResult Function(NavigateBackToFramework value)? navigateBackToFramework,
    TResult Function(RefreshWorkouts value)? refreshWorkouts,
    TResult Function(RefreshUsers value)? refreshUsers,
    TResult Function(NavigateToUserRights value)? navigateToUserRights,
  }) {
    return refreshWorkouts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetTeamId value)? setTeamId,
    TResult Function(NavigateBackToFramework value)? navigateBackToFramework,
    TResult Function(RefreshWorkouts value)? refreshWorkouts,
    TResult Function(RefreshUsers value)? refreshUsers,
    TResult Function(NavigateToUserRights value)? navigateToUserRights,
    required TResult orElse(),
  }) {
    if (refreshWorkouts != null) {
      return refreshWorkouts(this);
    }
    return orElse();
  }
}

abstract class RefreshWorkouts implements TeamEvent {
  const factory RefreshWorkouts() = _$RefreshWorkouts;
}

/// @nodoc
abstract class _$$RefreshUsersCopyWith<$Res> {
  factory _$$RefreshUsersCopyWith(
          _$RefreshUsers value, $Res Function(_$RefreshUsers) then) =
      __$$RefreshUsersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshUsersCopyWithImpl<$Res> extends _$TeamEventCopyWithImpl<$Res>
    implements _$$RefreshUsersCopyWith<$Res> {
  __$$RefreshUsersCopyWithImpl(
      _$RefreshUsers _value, $Res Function(_$RefreshUsers) _then)
      : super(_value, (v) => _then(v as _$RefreshUsers));

  @override
  _$RefreshUsers get _value => super._value as _$RefreshUsers;
}

/// @nodoc

class _$RefreshUsers implements RefreshUsers {
  const _$RefreshUsers();

  @override
  String toString() {
    return 'TeamEvent.refreshUsers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshUsers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId teamId) setTeamId,
    required TResult Function() navigateBackToFramework,
    required TResult Function() refreshWorkouts,
    required TResult Function() refreshUsers,
    required TResult Function(UniqueId teamMemberId) navigateToUserRights,
  }) {
    return refreshUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId teamId)? setTeamId,
    TResult Function()? navigateBackToFramework,
    TResult Function()? refreshWorkouts,
    TResult Function()? refreshUsers,
    TResult Function(UniqueId teamMemberId)? navigateToUserRights,
  }) {
    return refreshUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId teamId)? setTeamId,
    TResult Function()? navigateBackToFramework,
    TResult Function()? refreshWorkouts,
    TResult Function()? refreshUsers,
    TResult Function(UniqueId teamMemberId)? navigateToUserRights,
    required TResult orElse(),
  }) {
    if (refreshUsers != null) {
      return refreshUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetTeamId value) setTeamId,
    required TResult Function(NavigateBackToFramework value)
        navigateBackToFramework,
    required TResult Function(RefreshWorkouts value) refreshWorkouts,
    required TResult Function(RefreshUsers value) refreshUsers,
    required TResult Function(NavigateToUserRights value) navigateToUserRights,
  }) {
    return refreshUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetTeamId value)? setTeamId,
    TResult Function(NavigateBackToFramework value)? navigateBackToFramework,
    TResult Function(RefreshWorkouts value)? refreshWorkouts,
    TResult Function(RefreshUsers value)? refreshUsers,
    TResult Function(NavigateToUserRights value)? navigateToUserRights,
  }) {
    return refreshUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetTeamId value)? setTeamId,
    TResult Function(NavigateBackToFramework value)? navigateBackToFramework,
    TResult Function(RefreshWorkouts value)? refreshWorkouts,
    TResult Function(RefreshUsers value)? refreshUsers,
    TResult Function(NavigateToUserRights value)? navigateToUserRights,
    required TResult orElse(),
  }) {
    if (refreshUsers != null) {
      return refreshUsers(this);
    }
    return orElse();
  }
}

abstract class RefreshUsers implements TeamEvent {
  const factory RefreshUsers() = _$RefreshUsers;
}

/// @nodoc
abstract class _$$NavigateToUserRightsCopyWith<$Res> {
  factory _$$NavigateToUserRightsCopyWith(_$NavigateToUserRights value,
          $Res Function(_$NavigateToUserRights) then) =
      __$$NavigateToUserRightsCopyWithImpl<$Res>;
  $Res call({UniqueId teamMemberId});
}

/// @nodoc
class __$$NavigateToUserRightsCopyWithImpl<$Res>
    extends _$TeamEventCopyWithImpl<$Res>
    implements _$$NavigateToUserRightsCopyWith<$Res> {
  __$$NavigateToUserRightsCopyWithImpl(_$NavigateToUserRights _value,
      $Res Function(_$NavigateToUserRights) _then)
      : super(_value, (v) => _then(v as _$NavigateToUserRights));

  @override
  _$NavigateToUserRights get _value => super._value as _$NavigateToUserRights;

  @override
  $Res call({
    Object? teamMemberId = freezed,
  }) {
    return _then(_$NavigateToUserRights(
      teamMemberId == freezed
          ? _value.teamMemberId
          : teamMemberId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$NavigateToUserRights implements NavigateToUserRights {
  const _$NavigateToUserRights(this.teamMemberId);

  @override
  final UniqueId teamMemberId;

  @override
  String toString() {
    return 'TeamEvent.navigateToUserRights(teamMemberId: $teamMemberId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToUserRights &&
            const DeepCollectionEquality()
                .equals(other.teamMemberId, teamMemberId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(teamMemberId));

  @JsonKey(ignore: true)
  @override
  _$$NavigateToUserRightsCopyWith<_$NavigateToUserRights> get copyWith =>
      __$$NavigateToUserRightsCopyWithImpl<_$NavigateToUserRights>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId teamId) setTeamId,
    required TResult Function() navigateBackToFramework,
    required TResult Function() refreshWorkouts,
    required TResult Function() refreshUsers,
    required TResult Function(UniqueId teamMemberId) navigateToUserRights,
  }) {
    return navigateToUserRights(teamMemberId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId teamId)? setTeamId,
    TResult Function()? navigateBackToFramework,
    TResult Function()? refreshWorkouts,
    TResult Function()? refreshUsers,
    TResult Function(UniqueId teamMemberId)? navigateToUserRights,
  }) {
    return navigateToUserRights?.call(teamMemberId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId teamId)? setTeamId,
    TResult Function()? navigateBackToFramework,
    TResult Function()? refreshWorkouts,
    TResult Function()? refreshUsers,
    TResult Function(UniqueId teamMemberId)? navigateToUserRights,
    required TResult orElse(),
  }) {
    if (navigateToUserRights != null) {
      return navigateToUserRights(teamMemberId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetTeamId value) setTeamId,
    required TResult Function(NavigateBackToFramework value)
        navigateBackToFramework,
    required TResult Function(RefreshWorkouts value) refreshWorkouts,
    required TResult Function(RefreshUsers value) refreshUsers,
    required TResult Function(NavigateToUserRights value) navigateToUserRights,
  }) {
    return navigateToUserRights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SetTeamId value)? setTeamId,
    TResult Function(NavigateBackToFramework value)? navigateBackToFramework,
    TResult Function(RefreshWorkouts value)? refreshWorkouts,
    TResult Function(RefreshUsers value)? refreshUsers,
    TResult Function(NavigateToUserRights value)? navigateToUserRights,
  }) {
    return navigateToUserRights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetTeamId value)? setTeamId,
    TResult Function(NavigateBackToFramework value)? navigateBackToFramework,
    TResult Function(RefreshWorkouts value)? refreshWorkouts,
    TResult Function(RefreshUsers value)? refreshUsers,
    TResult Function(NavigateToUserRights value)? navigateToUserRights,
    required TResult orElse(),
  }) {
    if (navigateToUserRights != null) {
      return navigateToUserRights(this);
    }
    return orElse();
  }
}

abstract class NavigateToUserRights implements TeamEvent {
  const factory NavigateToUserRights(final UniqueId teamMemberId) =
      _$NavigateToUserRights;

  UniqueId get teamMemberId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$NavigateToUserRightsCopyWith<_$NavigateToUserRights> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TeamState {
  UniqueId get teamId => throw _privateConstructorUsedError;
  UniqueId get teamMemberIdToNavigateTo => throw _privateConstructorUsedError;
  bool get shouldNavigateBackToFramework => throw _privateConstructorUsedError;
  bool get shouldNavigateToUserRights => throw _privateConstructorUsedError;
  bool get usersRefreshing => throw _privateConstructorUsedError;
  Either<UserFailure, Unit> get usersFetchFailureOrSuccess =>
      throw _privateConstructorUsedError;
  KtList<Tuple2<User, Option<String>>> get userURLs =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamStateCopyWith<TeamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamStateCopyWith<$Res> {
  factory $TeamStateCopyWith(TeamState value, $Res Function(TeamState) then) =
      _$TeamStateCopyWithImpl<$Res>;
  $Res call(
      {UniqueId teamId,
      UniqueId teamMemberIdToNavigateTo,
      bool shouldNavigateBackToFramework,
      bool shouldNavigateToUserRights,
      bool usersRefreshing,
      Either<UserFailure, Unit> usersFetchFailureOrSuccess,
      KtList<Tuple2<User, Option<String>>> userURLs});
}

/// @nodoc
class _$TeamStateCopyWithImpl<$Res> implements $TeamStateCopyWith<$Res> {
  _$TeamStateCopyWithImpl(this._value, this._then);

  final TeamState _value;
  // ignore: unused_field
  final $Res Function(TeamState) _then;

  @override
  $Res call({
    Object? teamId = freezed,
    Object? teamMemberIdToNavigateTo = freezed,
    Object? shouldNavigateBackToFramework = freezed,
    Object? shouldNavigateToUserRights = freezed,
    Object? usersRefreshing = freezed,
    Object? usersFetchFailureOrSuccess = freezed,
    Object? userURLs = freezed,
  }) {
    return _then(_value.copyWith(
      teamId: teamId == freezed
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      teamMemberIdToNavigateTo: teamMemberIdToNavigateTo == freezed
          ? _value.teamMemberIdToNavigateTo
          : teamMemberIdToNavigateTo // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      shouldNavigateBackToFramework: shouldNavigateBackToFramework == freezed
          ? _value.shouldNavigateBackToFramework
          : shouldNavigateBackToFramework // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldNavigateToUserRights: shouldNavigateToUserRights == freezed
          ? _value.shouldNavigateToUserRights
          : shouldNavigateToUserRights // ignore: cast_nullable_to_non_nullable
              as bool,
      usersRefreshing: usersRefreshing == freezed
          ? _value.usersRefreshing
          : usersRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      usersFetchFailureOrSuccess: usersFetchFailureOrSuccess == freezed
          ? _value.usersFetchFailureOrSuccess
          : usersFetchFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<UserFailure, Unit>,
      userURLs: userURLs == freezed
          ? _value.userURLs
          : userURLs // ignore: cast_nullable_to_non_nullable
              as KtList<Tuple2<User, Option<String>>>,
    ));
  }
}

/// @nodoc
abstract class _$$_TeamStateCopyWith<$Res> implements $TeamStateCopyWith<$Res> {
  factory _$$_TeamStateCopyWith(
          _$_TeamState value, $Res Function(_$_TeamState) then) =
      __$$_TeamStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId teamId,
      UniqueId teamMemberIdToNavigateTo,
      bool shouldNavigateBackToFramework,
      bool shouldNavigateToUserRights,
      bool usersRefreshing,
      Either<UserFailure, Unit> usersFetchFailureOrSuccess,
      KtList<Tuple2<User, Option<String>>> userURLs});
}

/// @nodoc
class __$$_TeamStateCopyWithImpl<$Res> extends _$TeamStateCopyWithImpl<$Res>
    implements _$$_TeamStateCopyWith<$Res> {
  __$$_TeamStateCopyWithImpl(
      _$_TeamState _value, $Res Function(_$_TeamState) _then)
      : super(_value, (v) => _then(v as _$_TeamState));

  @override
  _$_TeamState get _value => super._value as _$_TeamState;

  @override
  $Res call({
    Object? teamId = freezed,
    Object? teamMemberIdToNavigateTo = freezed,
    Object? shouldNavigateBackToFramework = freezed,
    Object? shouldNavigateToUserRights = freezed,
    Object? usersRefreshing = freezed,
    Object? usersFetchFailureOrSuccess = freezed,
    Object? userURLs = freezed,
  }) {
    return _then(_$_TeamState(
      teamId: teamId == freezed
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      teamMemberIdToNavigateTo: teamMemberIdToNavigateTo == freezed
          ? _value.teamMemberIdToNavigateTo
          : teamMemberIdToNavigateTo // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      shouldNavigateBackToFramework: shouldNavigateBackToFramework == freezed
          ? _value.shouldNavigateBackToFramework
          : shouldNavigateBackToFramework // ignore: cast_nullable_to_non_nullable
              as bool,
      shouldNavigateToUserRights: shouldNavigateToUserRights == freezed
          ? _value.shouldNavigateToUserRights
          : shouldNavigateToUserRights // ignore: cast_nullable_to_non_nullable
              as bool,
      usersRefreshing: usersRefreshing == freezed
          ? _value.usersRefreshing
          : usersRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      usersFetchFailureOrSuccess: usersFetchFailureOrSuccess == freezed
          ? _value.usersFetchFailureOrSuccess
          : usersFetchFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<UserFailure, Unit>,
      userURLs: userURLs == freezed
          ? _value.userURLs
          : userURLs // ignore: cast_nullable_to_non_nullable
              as KtList<Tuple2<User, Option<String>>>,
    ));
  }
}

/// @nodoc

class _$_TeamState implements _TeamState {
  const _$_TeamState(
      {required this.teamId,
      required this.teamMemberIdToNavigateTo,
      required this.shouldNavigateBackToFramework,
      required this.shouldNavigateToUserRights,
      required this.usersRefreshing,
      required this.usersFetchFailureOrSuccess,
      required this.userURLs});

  @override
  final UniqueId teamId;
  @override
  final UniqueId teamMemberIdToNavigateTo;
  @override
  final bool shouldNavigateBackToFramework;
  @override
  final bool shouldNavigateToUserRights;
  @override
  final bool usersRefreshing;
  @override
  final Either<UserFailure, Unit> usersFetchFailureOrSuccess;
  @override
  final KtList<Tuple2<User, Option<String>>> userURLs;

  @override
  String toString() {
    return 'TeamState(teamId: $teamId, teamMemberIdToNavigateTo: $teamMemberIdToNavigateTo, shouldNavigateBackToFramework: $shouldNavigateBackToFramework, shouldNavigateToUserRights: $shouldNavigateToUserRights, usersRefreshing: $usersRefreshing, usersFetchFailureOrSuccess: $usersFetchFailureOrSuccess, userURLs: $userURLs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TeamState &&
            const DeepCollectionEquality().equals(other.teamId, teamId) &&
            const DeepCollectionEquality().equals(
                other.teamMemberIdToNavigateTo, teamMemberIdToNavigateTo) &&
            const DeepCollectionEquality().equals(
                other.shouldNavigateBackToFramework,
                shouldNavigateBackToFramework) &&
            const DeepCollectionEquality().equals(
                other.shouldNavigateToUserRights, shouldNavigateToUserRights) &&
            const DeepCollectionEquality()
                .equals(other.usersRefreshing, usersRefreshing) &&
            const DeepCollectionEquality().equals(
                other.usersFetchFailureOrSuccess, usersFetchFailureOrSuccess) &&
            const DeepCollectionEquality().equals(other.userURLs, userURLs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(teamId),
      const DeepCollectionEquality().hash(teamMemberIdToNavigateTo),
      const DeepCollectionEquality().hash(shouldNavigateBackToFramework),
      const DeepCollectionEquality().hash(shouldNavigateToUserRights),
      const DeepCollectionEquality().hash(usersRefreshing),
      const DeepCollectionEquality().hash(usersFetchFailureOrSuccess),
      const DeepCollectionEquality().hash(userURLs));

  @JsonKey(ignore: true)
  @override
  _$$_TeamStateCopyWith<_$_TeamState> get copyWith =>
      __$$_TeamStateCopyWithImpl<_$_TeamState>(this, _$identity);
}

abstract class _TeamState implements TeamState {
  const factory _TeamState(
          {required final UniqueId teamId,
          required final UniqueId teamMemberIdToNavigateTo,
          required final bool shouldNavigateBackToFramework,
          required final bool shouldNavigateToUserRights,
          required final bool usersRefreshing,
          required final Either<UserFailure, Unit> usersFetchFailureOrSuccess,
          required final KtList<Tuple2<User, Option<String>>> userURLs}) =
      _$_TeamState;

  @override
  UniqueId get teamId => throw _privateConstructorUsedError;
  @override
  UniqueId get teamMemberIdToNavigateTo => throw _privateConstructorUsedError;
  @override
  bool get shouldNavigateBackToFramework => throw _privateConstructorUsedError;
  @override
  bool get shouldNavigateToUserRights => throw _privateConstructorUsedError;
  @override
  bool get usersRefreshing => throw _privateConstructorUsedError;
  @override
  Either<UserFailure, Unit> get usersFetchFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  KtList<Tuple2<User, Option<String>>> get userURLs =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TeamStateCopyWith<_$_TeamState> get copyWith =>
      throw _privateConstructorUsedError;
}
