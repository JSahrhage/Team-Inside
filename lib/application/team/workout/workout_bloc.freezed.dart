// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'workout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WorkoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateBackToTeam,
    required TResult Function(UniqueId teamId) setTeamId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? navigateBackToTeam,
    TResult Function(UniqueId teamId)? setTeamId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateBackToTeam,
    TResult Function(UniqueId teamId)? setTeamId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBackToTeam value) navigateBackToTeam,
    required TResult Function(SetTeamId value) setTeamId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigateBackToTeam value)? navigateBackToTeam,
    TResult Function(SetTeamId value)? setTeamId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBackToTeam value)? navigateBackToTeam,
    TResult Function(SetTeamId value)? setTeamId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutEventCopyWith<$Res> {
  factory $WorkoutEventCopyWith(
          WorkoutEvent value, $Res Function(WorkoutEvent) then) =
      _$WorkoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkoutEventCopyWithImpl<$Res> implements $WorkoutEventCopyWith<$Res> {
  _$WorkoutEventCopyWithImpl(this._value, this._then);

  final WorkoutEvent _value;
  // ignore: unused_field
  final $Res Function(WorkoutEvent) _then;
}

/// @nodoc
abstract class _$$NavigateBackToTeamCopyWith<$Res> {
  factory _$$NavigateBackToTeamCopyWith(_$NavigateBackToTeam value,
          $Res Function(_$NavigateBackToTeam) then) =
      __$$NavigateBackToTeamCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigateBackToTeamCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res>
    implements _$$NavigateBackToTeamCopyWith<$Res> {
  __$$NavigateBackToTeamCopyWithImpl(
      _$NavigateBackToTeam _value, $Res Function(_$NavigateBackToTeam) _then)
      : super(_value, (v) => _then(v as _$NavigateBackToTeam));

  @override
  _$NavigateBackToTeam get _value => super._value as _$NavigateBackToTeam;
}

/// @nodoc

class _$NavigateBackToTeam implements NavigateBackToTeam {
  const _$NavigateBackToTeam();

  @override
  String toString() {
    return 'WorkoutEvent.navigateBackToTeam()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigateBackToTeam);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() navigateBackToTeam,
    required TResult Function(UniqueId teamId) setTeamId,
  }) {
    return navigateBackToTeam();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? navigateBackToTeam,
    TResult Function(UniqueId teamId)? setTeamId,
  }) {
    return navigateBackToTeam?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateBackToTeam,
    TResult Function(UniqueId teamId)? setTeamId,
    required TResult orElse(),
  }) {
    if (navigateBackToTeam != null) {
      return navigateBackToTeam();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigateBackToTeam value) navigateBackToTeam,
    required TResult Function(SetTeamId value) setTeamId,
  }) {
    return navigateBackToTeam(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigateBackToTeam value)? navigateBackToTeam,
    TResult Function(SetTeamId value)? setTeamId,
  }) {
    return navigateBackToTeam?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBackToTeam value)? navigateBackToTeam,
    TResult Function(SetTeamId value)? setTeamId,
    required TResult orElse(),
  }) {
    if (navigateBackToTeam != null) {
      return navigateBackToTeam(this);
    }
    return orElse();
  }
}

abstract class NavigateBackToTeam implements WorkoutEvent {
  const factory NavigateBackToTeam() = _$NavigateBackToTeam;
}

/// @nodoc
abstract class _$$SetTeamIdCopyWith<$Res> {
  factory _$$SetTeamIdCopyWith(
          _$SetTeamId value, $Res Function(_$SetTeamId) then) =
      __$$SetTeamIdCopyWithImpl<$Res>;
  $Res call({UniqueId teamId});
}

/// @nodoc
class __$$SetTeamIdCopyWithImpl<$Res> extends _$WorkoutEventCopyWithImpl<$Res>
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
    return 'WorkoutEvent.setTeamId(teamId: $teamId)';
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
    required TResult Function() navigateBackToTeam,
    required TResult Function(UniqueId teamId) setTeamId,
  }) {
    return setTeamId(teamId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? navigateBackToTeam,
    TResult Function(UniqueId teamId)? setTeamId,
  }) {
    return setTeamId?.call(teamId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? navigateBackToTeam,
    TResult Function(UniqueId teamId)? setTeamId,
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
    required TResult Function(NavigateBackToTeam value) navigateBackToTeam,
    required TResult Function(SetTeamId value) setTeamId,
  }) {
    return setTeamId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NavigateBackToTeam value)? navigateBackToTeam,
    TResult Function(SetTeamId value)? setTeamId,
  }) {
    return setTeamId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigateBackToTeam value)? navigateBackToTeam,
    TResult Function(SetTeamId value)? setTeamId,
    required TResult orElse(),
  }) {
    if (setTeamId != null) {
      return setTeamId(this);
    }
    return orElse();
  }
}

abstract class SetTeamId implements WorkoutEvent {
  const factory SetTeamId(final UniqueId teamId) = _$SetTeamId;

  UniqueId get teamId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SetTeamIdCopyWith<_$SetTeamId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorkoutState {
  UniqueId get teamId => throw _privateConstructorUsedError;
  UniqueId get workoutId => throw _privateConstructorUsedError;
  bool get shouldNavigateBackToFramework => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutStateCopyWith<WorkoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutStateCopyWith<$Res> {
  factory $WorkoutStateCopyWith(
          WorkoutState value, $Res Function(WorkoutState) then) =
      _$WorkoutStateCopyWithImpl<$Res>;
  $Res call(
      {UniqueId teamId,
      UniqueId workoutId,
      bool shouldNavigateBackToFramework});
}

/// @nodoc
class _$WorkoutStateCopyWithImpl<$Res> implements $WorkoutStateCopyWith<$Res> {
  _$WorkoutStateCopyWithImpl(this._value, this._then);

  final WorkoutState _value;
  // ignore: unused_field
  final $Res Function(WorkoutState) _then;

  @override
  $Res call({
    Object? teamId = freezed,
    Object? workoutId = freezed,
    Object? shouldNavigateBackToFramework = freezed,
  }) {
    return _then(_value.copyWith(
      teamId: teamId == freezed
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      workoutId: workoutId == freezed
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      shouldNavigateBackToFramework: shouldNavigateBackToFramework == freezed
          ? _value.shouldNavigateBackToFramework
          : shouldNavigateBackToFramework // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_WorkoutStateCopyWith<$Res>
    implements $WorkoutStateCopyWith<$Res> {
  factory _$$_WorkoutStateCopyWith(
          _$_WorkoutState value, $Res Function(_$_WorkoutState) then) =
      __$$_WorkoutStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId teamId,
      UniqueId workoutId,
      bool shouldNavigateBackToFramework});
}

/// @nodoc
class __$$_WorkoutStateCopyWithImpl<$Res>
    extends _$WorkoutStateCopyWithImpl<$Res>
    implements _$$_WorkoutStateCopyWith<$Res> {
  __$$_WorkoutStateCopyWithImpl(
      _$_WorkoutState _value, $Res Function(_$_WorkoutState) _then)
      : super(_value, (v) => _then(v as _$_WorkoutState));

  @override
  _$_WorkoutState get _value => super._value as _$_WorkoutState;

  @override
  $Res call({
    Object? teamId = freezed,
    Object? workoutId = freezed,
    Object? shouldNavigateBackToFramework = freezed,
  }) {
    return _then(_$_WorkoutState(
      teamId: teamId == freezed
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      workoutId: workoutId == freezed
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      shouldNavigateBackToFramework: shouldNavigateBackToFramework == freezed
          ? _value.shouldNavigateBackToFramework
          : shouldNavigateBackToFramework // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WorkoutState implements _WorkoutState {
  const _$_WorkoutState(
      {required this.teamId,
      required this.workoutId,
      required this.shouldNavigateBackToFramework});

  @override
  final UniqueId teamId;
  @override
  final UniqueId workoutId;
  @override
  final bool shouldNavigateBackToFramework;

  @override
  String toString() {
    return 'WorkoutState(teamId: $teamId, workoutId: $workoutId, shouldNavigateBackToFramework: $shouldNavigateBackToFramework)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutState &&
            const DeepCollectionEquality().equals(other.teamId, teamId) &&
            const DeepCollectionEquality().equals(other.workoutId, workoutId) &&
            const DeepCollectionEquality().equals(
                other.shouldNavigateBackToFramework,
                shouldNavigateBackToFramework));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(teamId),
      const DeepCollectionEquality().hash(workoutId),
      const DeepCollectionEquality().hash(shouldNavigateBackToFramework));

  @JsonKey(ignore: true)
  @override
  _$$_WorkoutStateCopyWith<_$_WorkoutState> get copyWith =>
      __$$_WorkoutStateCopyWithImpl<_$_WorkoutState>(this, _$identity);
}

abstract class _WorkoutState implements WorkoutState {
  const factory _WorkoutState(
      {required final UniqueId teamId,
      required final UniqueId workoutId,
      required final bool shouldNavigateBackToFramework}) = _$_WorkoutState;

  @override
  UniqueId get teamId => throw _privateConstructorUsedError;
  @override
  UniqueId get workoutId => throw _privateConstructorUsedError;
  @override
  bool get shouldNavigateBackToFramework => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutStateCopyWith<_$_WorkoutState> get copyWith =>
      throw _privateConstructorUsedError;
}
