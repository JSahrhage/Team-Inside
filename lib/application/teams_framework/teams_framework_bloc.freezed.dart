// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'teams_framework_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeamsFrameworkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() refreshJoinedTeams,
    required TResult Function() refreshTeamRequests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
    required TResult Function(RefreshJoinedTeams value) refreshJoinedTeams,
    required TResult Function(RefreshTeamRequests value) refreshTeamRequests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamsFrameworkEventCopyWith<$Res> {
  factory $TeamsFrameworkEventCopyWith(
          TeamsFrameworkEvent value, $Res Function(TeamsFrameworkEvent) then) =
      _$TeamsFrameworkEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TeamsFrameworkEventCopyWithImpl<$Res>
    implements $TeamsFrameworkEventCopyWith<$Res> {
  _$TeamsFrameworkEventCopyWithImpl(this._value, this._then);

  final TeamsFrameworkEvent _value;
  // ignore: unused_field
  final $Res Function(TeamsFrameworkEvent) _then;
}

/// @nodoc
abstract class $SignOutCopyWith<$Res> {
  factory $SignOutCopyWith(SignOut value, $Res Function(SignOut) then) =
      _$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutCopyWithImpl<$Res>
    extends _$TeamsFrameworkEventCopyWithImpl<$Res>
    implements $SignOutCopyWith<$Res> {
  _$SignOutCopyWithImpl(SignOut _value, $Res Function(SignOut) _then)
      : super(_value, (v) => _then(v as SignOut));

  @override
  SignOut get _value => super._value as SignOut;
}

/// @nodoc

class _$SignOut implements SignOut {
  const _$SignOut();

  @override
  String toString() {
    return 'TeamsFrameworkEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() refreshJoinedTeams,
    required TResult Function() refreshTeamRequests,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
    required TResult Function(RefreshJoinedTeams value) refreshJoinedTeams,
    required TResult Function(RefreshTeamRequests value) refreshTeamRequests,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements TeamsFrameworkEvent {
  const factory SignOut() = _$SignOut;
}

/// @nodoc
abstract class $RefreshJoinedTeamsCopyWith<$Res> {
  factory $RefreshJoinedTeamsCopyWith(
          RefreshJoinedTeams value, $Res Function(RefreshJoinedTeams) then) =
      _$RefreshJoinedTeamsCopyWithImpl<$Res>;
}

/// @nodoc
class _$RefreshJoinedTeamsCopyWithImpl<$Res>
    extends _$TeamsFrameworkEventCopyWithImpl<$Res>
    implements $RefreshJoinedTeamsCopyWith<$Res> {
  _$RefreshJoinedTeamsCopyWithImpl(
      RefreshJoinedTeams _value, $Res Function(RefreshJoinedTeams) _then)
      : super(_value, (v) => _then(v as RefreshJoinedTeams));

  @override
  RefreshJoinedTeams get _value => super._value as RefreshJoinedTeams;
}

/// @nodoc

class _$RefreshJoinedTeams implements RefreshJoinedTeams {
  const _$RefreshJoinedTeams();

  @override
  String toString() {
    return 'TeamsFrameworkEvent.refreshJoinedTeams()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RefreshJoinedTeams);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() refreshJoinedTeams,
    required TResult Function() refreshTeamRequests,
  }) {
    return refreshJoinedTeams();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
  }) {
    return refreshJoinedTeams?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    required TResult orElse(),
  }) {
    if (refreshJoinedTeams != null) {
      return refreshJoinedTeams();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
    required TResult Function(RefreshJoinedTeams value) refreshJoinedTeams,
    required TResult Function(RefreshTeamRequests value) refreshTeamRequests,
  }) {
    return refreshJoinedTeams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
  }) {
    return refreshJoinedTeams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    required TResult orElse(),
  }) {
    if (refreshJoinedTeams != null) {
      return refreshJoinedTeams(this);
    }
    return orElse();
  }
}

abstract class RefreshJoinedTeams implements TeamsFrameworkEvent {
  const factory RefreshJoinedTeams() = _$RefreshJoinedTeams;
}

/// @nodoc
abstract class $RefreshTeamRequestsCopyWith<$Res> {
  factory $RefreshTeamRequestsCopyWith(
          RefreshTeamRequests value, $Res Function(RefreshTeamRequests) then) =
      _$RefreshTeamRequestsCopyWithImpl<$Res>;
}

/// @nodoc
class _$RefreshTeamRequestsCopyWithImpl<$Res>
    extends _$TeamsFrameworkEventCopyWithImpl<$Res>
    implements $RefreshTeamRequestsCopyWith<$Res> {
  _$RefreshTeamRequestsCopyWithImpl(
      RefreshTeamRequests _value, $Res Function(RefreshTeamRequests) _then)
      : super(_value, (v) => _then(v as RefreshTeamRequests));

  @override
  RefreshTeamRequests get _value => super._value as RefreshTeamRequests;
}

/// @nodoc

class _$RefreshTeamRequests implements RefreshTeamRequests {
  const _$RefreshTeamRequests();

  @override
  String toString() {
    return 'TeamsFrameworkEvent.refreshTeamRequests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RefreshTeamRequests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() refreshJoinedTeams,
    required TResult Function() refreshTeamRequests,
  }) {
    return refreshTeamRequests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
  }) {
    return refreshTeamRequests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    required TResult orElse(),
  }) {
    if (refreshTeamRequests != null) {
      return refreshTeamRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
    required TResult Function(RefreshJoinedTeams value) refreshJoinedTeams,
    required TResult Function(RefreshTeamRequests value) refreshTeamRequests,
  }) {
    return refreshTeamRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
  }) {
    return refreshTeamRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    required TResult orElse(),
  }) {
    if (refreshTeamRequests != null) {
      return refreshTeamRequests(this);
    }
    return orElse();
  }
}

abstract class RefreshTeamRequests implements TeamsFrameworkEvent {
  const factory RefreshTeamRequests() = _$RefreshTeamRequests;
}

/// @nodoc
mixin _$TeamsFrameworkState {
  bool get shouldSignOut => throw _privateConstructorUsedError;
  Either<TeamFailure, KtList<Team>> get joinedTeams =>
      throw _privateConstructorUsedError;
  Either<TeamFailure, Unit> get joinedTeamsFetchFailureOrSuccess =>
      throw _privateConstructorUsedError;
  KtList<Tuple2<Team, Option<String>>> get joinedTeamURLs =>
      throw _privateConstructorUsedError;
  Either<TeamFailure, KtList<Team>> get teamRequests =>
      throw _privateConstructorUsedError;
  Either<TeamFailure, Unit> get teamRequestsFetchFailureOrSuccess =>
      throw _privateConstructorUsedError;
  KtList<Tuple2<Team, Option<String>>> get teamRequestURLs =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamsFrameworkStateCopyWith<TeamsFrameworkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamsFrameworkStateCopyWith<$Res> {
  factory $TeamsFrameworkStateCopyWith(
          TeamsFrameworkState value, $Res Function(TeamsFrameworkState) then) =
      _$TeamsFrameworkStateCopyWithImpl<$Res>;
  $Res call(
      {bool shouldSignOut,
      Either<TeamFailure, KtList<Team>> joinedTeams,
      Either<TeamFailure, Unit> joinedTeamsFetchFailureOrSuccess,
      KtList<Tuple2<Team, Option<String>>> joinedTeamURLs,
      Either<TeamFailure, KtList<Team>> teamRequests,
      Either<TeamFailure, Unit> teamRequestsFetchFailureOrSuccess,
      KtList<Tuple2<Team, Option<String>>> teamRequestURLs});
}

/// @nodoc
class _$TeamsFrameworkStateCopyWithImpl<$Res>
    implements $TeamsFrameworkStateCopyWith<$Res> {
  _$TeamsFrameworkStateCopyWithImpl(this._value, this._then);

  final TeamsFrameworkState _value;
  // ignore: unused_field
  final $Res Function(TeamsFrameworkState) _then;

  @override
  $Res call({
    Object? shouldSignOut = freezed,
    Object? joinedTeams = freezed,
    Object? joinedTeamsFetchFailureOrSuccess = freezed,
    Object? joinedTeamURLs = freezed,
    Object? teamRequests = freezed,
    Object? teamRequestsFetchFailureOrSuccess = freezed,
    Object? teamRequestURLs = freezed,
  }) {
    return _then(_value.copyWith(
      shouldSignOut: shouldSignOut == freezed
          ? _value.shouldSignOut
          : shouldSignOut // ignore: cast_nullable_to_non_nullable
              as bool,
      joinedTeams: joinedTeams == freezed
          ? _value.joinedTeams
          : joinedTeams // ignore: cast_nullable_to_non_nullable
              as Either<TeamFailure, KtList<Team>>,
      joinedTeamsFetchFailureOrSuccess: joinedTeamsFetchFailureOrSuccess ==
              freezed
          ? _value.joinedTeamsFetchFailureOrSuccess
          : joinedTeamsFetchFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<TeamFailure, Unit>,
      joinedTeamURLs: joinedTeamURLs == freezed
          ? _value.joinedTeamURLs
          : joinedTeamURLs // ignore: cast_nullable_to_non_nullable
              as KtList<Tuple2<Team, Option<String>>>,
      teamRequests: teamRequests == freezed
          ? _value.teamRequests
          : teamRequests // ignore: cast_nullable_to_non_nullable
              as Either<TeamFailure, KtList<Team>>,
      teamRequestsFetchFailureOrSuccess: teamRequestsFetchFailureOrSuccess ==
              freezed
          ? _value.teamRequestsFetchFailureOrSuccess
          : teamRequestsFetchFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<TeamFailure, Unit>,
      teamRequestURLs: teamRequestURLs == freezed
          ? _value.teamRequestURLs
          : teamRequestURLs // ignore: cast_nullable_to_non_nullable
              as KtList<Tuple2<Team, Option<String>>>,
    ));
  }
}

/// @nodoc
abstract class _$TeamsFrameworkStateCopyWith<$Res>
    implements $TeamsFrameworkStateCopyWith<$Res> {
  factory _$TeamsFrameworkStateCopyWith(_TeamsFrameworkState value,
          $Res Function(_TeamsFrameworkState) then) =
      __$TeamsFrameworkStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool shouldSignOut,
      Either<TeamFailure, KtList<Team>> joinedTeams,
      Either<TeamFailure, Unit> joinedTeamsFetchFailureOrSuccess,
      KtList<Tuple2<Team, Option<String>>> joinedTeamURLs,
      Either<TeamFailure, KtList<Team>> teamRequests,
      Either<TeamFailure, Unit> teamRequestsFetchFailureOrSuccess,
      KtList<Tuple2<Team, Option<String>>> teamRequestURLs});
}

/// @nodoc
class __$TeamsFrameworkStateCopyWithImpl<$Res>
    extends _$TeamsFrameworkStateCopyWithImpl<$Res>
    implements _$TeamsFrameworkStateCopyWith<$Res> {
  __$TeamsFrameworkStateCopyWithImpl(
      _TeamsFrameworkState _value, $Res Function(_TeamsFrameworkState) _then)
      : super(_value, (v) => _then(v as _TeamsFrameworkState));

  @override
  _TeamsFrameworkState get _value => super._value as _TeamsFrameworkState;

  @override
  $Res call({
    Object? shouldSignOut = freezed,
    Object? joinedTeams = freezed,
    Object? joinedTeamsFetchFailureOrSuccess = freezed,
    Object? joinedTeamURLs = freezed,
    Object? teamRequests = freezed,
    Object? teamRequestsFetchFailureOrSuccess = freezed,
    Object? teamRequestURLs = freezed,
  }) {
    return _then(_TeamsFrameworkState(
      shouldSignOut: shouldSignOut == freezed
          ? _value.shouldSignOut
          : shouldSignOut // ignore: cast_nullable_to_non_nullable
              as bool,
      joinedTeams: joinedTeams == freezed
          ? _value.joinedTeams
          : joinedTeams // ignore: cast_nullable_to_non_nullable
              as Either<TeamFailure, KtList<Team>>,
      joinedTeamsFetchFailureOrSuccess: joinedTeamsFetchFailureOrSuccess ==
              freezed
          ? _value.joinedTeamsFetchFailureOrSuccess
          : joinedTeamsFetchFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<TeamFailure, Unit>,
      joinedTeamURLs: joinedTeamURLs == freezed
          ? _value.joinedTeamURLs
          : joinedTeamURLs // ignore: cast_nullable_to_non_nullable
              as KtList<Tuple2<Team, Option<String>>>,
      teamRequests: teamRequests == freezed
          ? _value.teamRequests
          : teamRequests // ignore: cast_nullable_to_non_nullable
              as Either<TeamFailure, KtList<Team>>,
      teamRequestsFetchFailureOrSuccess: teamRequestsFetchFailureOrSuccess ==
              freezed
          ? _value.teamRequestsFetchFailureOrSuccess
          : teamRequestsFetchFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<TeamFailure, Unit>,
      teamRequestURLs: teamRequestURLs == freezed
          ? _value.teamRequestURLs
          : teamRequestURLs // ignore: cast_nullable_to_non_nullable
              as KtList<Tuple2<Team, Option<String>>>,
    ));
  }
}

/// @nodoc

class _$_TeamsFrameworkState implements _TeamsFrameworkState {
  const _$_TeamsFrameworkState(
      {required this.shouldSignOut,
      required this.joinedTeams,
      required this.joinedTeamsFetchFailureOrSuccess,
      required this.joinedTeamURLs,
      required this.teamRequests,
      required this.teamRequestsFetchFailureOrSuccess,
      required this.teamRequestURLs});

  @override
  final bool shouldSignOut;
  @override
  final Either<TeamFailure, KtList<Team>> joinedTeams;
  @override
  final Either<TeamFailure, Unit> joinedTeamsFetchFailureOrSuccess;
  @override
  final KtList<Tuple2<Team, Option<String>>> joinedTeamURLs;
  @override
  final Either<TeamFailure, KtList<Team>> teamRequests;
  @override
  final Either<TeamFailure, Unit> teamRequestsFetchFailureOrSuccess;
  @override
  final KtList<Tuple2<Team, Option<String>>> teamRequestURLs;

  @override
  String toString() {
    return 'TeamsFrameworkState(shouldSignOut: $shouldSignOut, joinedTeams: $joinedTeams, joinedTeamsFetchFailureOrSuccess: $joinedTeamsFetchFailureOrSuccess, joinedTeamURLs: $joinedTeamURLs, teamRequests: $teamRequests, teamRequestsFetchFailureOrSuccess: $teamRequestsFetchFailureOrSuccess, teamRequestURLs: $teamRequestURLs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TeamsFrameworkState &&
            const DeepCollectionEquality()
                .equals(other.shouldSignOut, shouldSignOut) &&
            const DeepCollectionEquality()
                .equals(other.joinedTeams, joinedTeams) &&
            const DeepCollectionEquality().equals(
                other.joinedTeamsFetchFailureOrSuccess,
                joinedTeamsFetchFailureOrSuccess) &&
            const DeepCollectionEquality()
                .equals(other.joinedTeamURLs, joinedTeamURLs) &&
            const DeepCollectionEquality()
                .equals(other.teamRequests, teamRequests) &&
            const DeepCollectionEquality().equals(
                other.teamRequestsFetchFailureOrSuccess,
                teamRequestsFetchFailureOrSuccess) &&
            const DeepCollectionEquality()
                .equals(other.teamRequestURLs, teamRequestURLs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shouldSignOut),
      const DeepCollectionEquality().hash(joinedTeams),
      const DeepCollectionEquality().hash(joinedTeamsFetchFailureOrSuccess),
      const DeepCollectionEquality().hash(joinedTeamURLs),
      const DeepCollectionEquality().hash(teamRequests),
      const DeepCollectionEquality().hash(teamRequestsFetchFailureOrSuccess),
      const DeepCollectionEquality().hash(teamRequestURLs));

  @JsonKey(ignore: true)
  @override
  _$TeamsFrameworkStateCopyWith<_TeamsFrameworkState> get copyWith =>
      __$TeamsFrameworkStateCopyWithImpl<_TeamsFrameworkState>(
          this, _$identity);
}

abstract class _TeamsFrameworkState implements TeamsFrameworkState {
  const factory _TeamsFrameworkState(
      {required final bool shouldSignOut,
      required final Either<TeamFailure, KtList<Team>> joinedTeams,
      required final Either<TeamFailure, Unit> joinedTeamsFetchFailureOrSuccess,
      required final KtList<Tuple2<Team, Option<String>>> joinedTeamURLs,
      required final Either<TeamFailure, KtList<Team>> teamRequests,
      required final Either<TeamFailure, Unit>
          teamRequestsFetchFailureOrSuccess,
      required final KtList<Tuple2<Team, Option<String>>>
          teamRequestURLs}) = _$_TeamsFrameworkState;

  @override
  bool get shouldSignOut => throw _privateConstructorUsedError;
  @override
  Either<TeamFailure, KtList<Team>> get joinedTeams =>
      throw _privateConstructorUsedError;
  @override
  Either<TeamFailure, Unit> get joinedTeamsFetchFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  KtList<Tuple2<Team, Option<String>>> get joinedTeamURLs =>
      throw _privateConstructorUsedError;
  @override
  Either<TeamFailure, KtList<Team>> get teamRequests =>
      throw _privateConstructorUsedError;
  @override
  Either<TeamFailure, Unit> get teamRequestsFetchFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  KtList<Tuple2<Team, Option<String>>> get teamRequestURLs =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TeamsFrameworkStateCopyWith<_TeamsFrameworkState> get copyWith =>
      throw _privateConstructorUsedError;
}
