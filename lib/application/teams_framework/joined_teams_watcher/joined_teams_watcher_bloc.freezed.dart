// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'joined_teams_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JoinedTeamsWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(Either<TeamFailure, KtList<Team>> failureOrTeams)
        teamsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(Either<TeamFailure, KtList<Team>> failureOrTeams)?
        teamsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(Either<TeamFailure, KtList<Team>> failureOrTeams)?
        teamsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(TeamsReceived value) teamsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(TeamsReceived value)? teamsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(TeamsReceived value)? teamsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinedTeamsWatcherEventCopyWith<$Res> {
  factory $JoinedTeamsWatcherEventCopyWith(JoinedTeamsWatcherEvent value,
          $Res Function(JoinedTeamsWatcherEvent) then) =
      _$JoinedTeamsWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$JoinedTeamsWatcherEventCopyWithImpl<$Res>
    implements $JoinedTeamsWatcherEventCopyWith<$Res> {
  _$JoinedTeamsWatcherEventCopyWithImpl(this._value, this._then);

  final JoinedTeamsWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(JoinedTeamsWatcherEvent) _then;
}

/// @nodoc
abstract class $WatchStartedCopyWith<$Res> {
  factory $WatchStartedCopyWith(
          WatchStarted value, $Res Function(WatchStarted) then) =
      _$WatchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchStartedCopyWithImpl<$Res>
    extends _$JoinedTeamsWatcherEventCopyWithImpl<$Res>
    implements $WatchStartedCopyWith<$Res> {
  _$WatchStartedCopyWithImpl(
      WatchStarted _value, $Res Function(WatchStarted) _then)
      : super(_value, (v) => _then(v as WatchStarted));

  @override
  WatchStarted get _value => super._value as WatchStarted;
}

/// @nodoc

class _$WatchStarted implements WatchStarted {
  const _$WatchStarted();

  @override
  String toString() {
    return 'JoinedTeamsWatcherEvent.watchStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WatchStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(Either<TeamFailure, KtList<Team>> failureOrTeams)
        teamsReceived,
  }) {
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(Either<TeamFailure, KtList<Team>> failureOrTeams)?
        teamsReceived,
  }) {
    return watchStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(Either<TeamFailure, KtList<Team>> failureOrTeams)?
        teamsReceived,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(TeamsReceived value) teamsReceived,
  }) {
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(TeamsReceived value)? teamsReceived,
  }) {
    return watchStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(TeamsReceived value)? teamsReceived,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted(this);
    }
    return orElse();
  }
}

abstract class WatchStarted implements JoinedTeamsWatcherEvent {
  const factory WatchStarted() = _$WatchStarted;
}

/// @nodoc
abstract class $TeamsReceivedCopyWith<$Res> {
  factory $TeamsReceivedCopyWith(
          TeamsReceived value, $Res Function(TeamsReceived) then) =
      _$TeamsReceivedCopyWithImpl<$Res>;
  $Res call({Either<TeamFailure, KtList<Team>> failureOrTeams});
}

/// @nodoc
class _$TeamsReceivedCopyWithImpl<$Res>
    extends _$JoinedTeamsWatcherEventCopyWithImpl<$Res>
    implements $TeamsReceivedCopyWith<$Res> {
  _$TeamsReceivedCopyWithImpl(
      TeamsReceived _value, $Res Function(TeamsReceived) _then)
      : super(_value, (v) => _then(v as TeamsReceived));

  @override
  TeamsReceived get _value => super._value as TeamsReceived;

  @override
  $Res call({
    Object? failureOrTeams = freezed,
  }) {
    return _then(TeamsReceived(
      failureOrTeams == freezed
          ? _value.failureOrTeams
          : failureOrTeams // ignore: cast_nullable_to_non_nullable
              as Either<TeamFailure, KtList<Team>>,
    ));
  }
}

/// @nodoc

class _$TeamsReceived implements TeamsReceived {
  const _$TeamsReceived(this.failureOrTeams);

  @override
  final Either<TeamFailure, KtList<Team>> failureOrTeams;

  @override
  String toString() {
    return 'JoinedTeamsWatcherEvent.teamsReceived(failureOrTeams: $failureOrTeams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TeamsReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrTeams, failureOrTeams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrTeams));

  @JsonKey(ignore: true)
  @override
  $TeamsReceivedCopyWith<TeamsReceived> get copyWith =>
      _$TeamsReceivedCopyWithImpl<TeamsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function(Either<TeamFailure, KtList<Team>> failureOrTeams)
        teamsReceived,
  }) {
    return teamsReceived(failureOrTeams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(Either<TeamFailure, KtList<Team>> failureOrTeams)?
        teamsReceived,
  }) {
    return teamsReceived?.call(failureOrTeams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function(Either<TeamFailure, KtList<Team>> failureOrTeams)?
        teamsReceived,
    required TResult orElse(),
  }) {
    if (teamsReceived != null) {
      return teamsReceived(failureOrTeams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(TeamsReceived value) teamsReceived,
  }) {
    return teamsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(TeamsReceived value)? teamsReceived,
  }) {
    return teamsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(TeamsReceived value)? teamsReceived,
    required TResult orElse(),
  }) {
    if (teamsReceived != null) {
      return teamsReceived(this);
    }
    return orElse();
  }
}

abstract class TeamsReceived implements JoinedTeamsWatcherEvent {
  const factory TeamsReceived(
      final Either<TeamFailure, KtList<Team>> failureOrTeams) = _$TeamsReceived;

  Either<TeamFailure, KtList<Team>> get failureOrTeams =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamsReceivedCopyWith<TeamsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$JoinedTeamsWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Team> notes) loadSuccess,
    required TResult Function(TeamFailure noteFailure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Team> notes)? loadSuccess,
    TResult Function(TeamFailure noteFailure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Team> notes)? loadSuccess,
    TResult Function(TeamFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DataTransferInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinedTeamsWatcherStateCopyWith<$Res> {
  factory $JoinedTeamsWatcherStateCopyWith(JoinedTeamsWatcherState value,
          $Res Function(JoinedTeamsWatcherState) then) =
      _$JoinedTeamsWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$JoinedTeamsWatcherStateCopyWithImpl<$Res>
    implements $JoinedTeamsWatcherStateCopyWith<$Res> {
  _$JoinedTeamsWatcherStateCopyWithImpl(this._value, this._then);

  final JoinedTeamsWatcherState _value;
  // ignore: unused_field
  final $Res Function(JoinedTeamsWatcherState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$JoinedTeamsWatcherStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'JoinedTeamsWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Team> notes) loadSuccess,
    required TResult Function(TeamFailure noteFailure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Team> notes)? loadSuccess,
    TResult Function(TeamFailure noteFailure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Team> notes)? loadSuccess,
    TResult Function(TeamFailure noteFailure)? loadFailure,
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
    required TResult Function(Initial value) initial,
    required TResult Function(DataTransferInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements JoinedTeamsWatcherState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$JoinedTeamsWatcherStateCopyWithImpl<$Res>
    implements $DataTransferInProgressCopyWith<$Res> {
  _$DataTransferInProgressCopyWithImpl(DataTransferInProgress _value,
      $Res Function(DataTransferInProgress) _then)
      : super(_value, (v) => _then(v as DataTransferInProgress));

  @override
  DataTransferInProgress get _value => super._value as DataTransferInProgress;
}

/// @nodoc

class _$DataTransferInProgress implements DataTransferInProgress {
  const _$DataTransferInProgress();

  @override
  String toString() {
    return 'JoinedTeamsWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Team> notes) loadSuccess,
    required TResult Function(TeamFailure noteFailure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Team> notes)? loadSuccess,
    TResult Function(TeamFailure noteFailure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Team> notes)? loadSuccess,
    TResult Function(TeamFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DataTransferInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class DataTransferInProgress implements JoinedTeamsWatcherState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Team> notes});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$JoinedTeamsWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(LoadSuccess(
      notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as KtList<Team>,
    ));
  }
}

/// @nodoc

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.notes);

  @override
  final KtList<Team> notes;

  @override
  String toString() {
    return 'JoinedTeamsWatcherState.loadSuccess(notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadSuccess &&
            const DeepCollectionEquality().equals(other.notes, notes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(notes));

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Team> notes) loadSuccess,
    required TResult Function(TeamFailure noteFailure) loadFailure,
  }) {
    return loadSuccess(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Team> notes)? loadSuccess,
    TResult Function(TeamFailure noteFailure)? loadFailure,
  }) {
    return loadSuccess?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Team> notes)? loadSuccess,
    TResult Function(TeamFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DataTransferInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements JoinedTeamsWatcherState {
  const factory LoadSuccess(final KtList<Team> notes) = _$LoadSuccess;

  KtList<Team> get notes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({TeamFailure noteFailure});

  $TeamFailureCopyWith<$Res> get noteFailure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res>
    extends _$JoinedTeamsWatcherStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object? noteFailure = freezed,
  }) {
    return _then(LoadFailure(
      noteFailure == freezed
          ? _value.noteFailure
          : noteFailure // ignore: cast_nullable_to_non_nullable
              as TeamFailure,
    ));
  }

  @override
  $TeamFailureCopyWith<$Res> get noteFailure {
    return $TeamFailureCopyWith<$Res>(_value.noteFailure, (value) {
      return _then(_value.copyWith(noteFailure: value));
    });
  }
}

/// @nodoc

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.noteFailure);

  @override
  final TeamFailure noteFailure;

  @override
  String toString() {
    return 'JoinedTeamsWatcherState.loadFailure(noteFailure: $noteFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.noteFailure, noteFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(noteFailure));

  @JsonKey(ignore: true)
  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Team> notes) loadSuccess,
    required TResult Function(TeamFailure noteFailure) loadFailure,
  }) {
    return loadFailure(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Team> notes)? loadSuccess,
    TResult Function(TeamFailure noteFailure)? loadFailure,
  }) {
    return loadFailure?.call(noteFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Team> notes)? loadSuccess,
    TResult Function(TeamFailure noteFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(noteFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(DataTransferInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(DataTransferInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements JoinedTeamsWatcherState {
  const factory LoadFailure(final TeamFailure noteFailure) = _$LoadFailure;

  TeamFailure get noteFailure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
