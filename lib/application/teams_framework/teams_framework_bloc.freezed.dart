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
    required TResult Function() deleteUser,
    required TResult Function(String username) changeUsername,
    required TResult Function() refreshJoinedTeams,
    required TResult Function() refreshTeamRequests,
    required TResult Function() refreshUserSettings,
    required TResult Function(File image) imagePicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? deleteUser,
    TResult Function(String username)? changeUsername,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    TResult Function()? refreshUserSettings,
    TResult Function(File image)? imagePicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? deleteUser,
    TResult Function(String username)? changeUsername,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    TResult Function()? refreshUserSettings,
    TResult Function(File image)? imagePicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(ChangeUsername value) changeUsername,
    required TResult Function(RefreshJoinedTeams value) refreshJoinedTeams,
    required TResult Function(RefreshTeamRequests value) refreshTeamRequests,
    required TResult Function(RefreshUserSettings value) refreshUserSettings,
    required TResult Function(ImagePicked value) imagePicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    TResult Function(RefreshUserSettings value)? refreshUserSettings,
    TResult Function(ImagePicked value)? imagePicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    TResult Function(RefreshUserSettings value)? refreshUserSettings,
    TResult Function(ImagePicked value)? imagePicked,
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
    required TResult Function() deleteUser,
    required TResult Function(String username) changeUsername,
    required TResult Function() refreshJoinedTeams,
    required TResult Function() refreshTeamRequests,
    required TResult Function() refreshUserSettings,
    required TResult Function(File image) imagePicked,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? deleteUser,
    TResult Function(String username)? changeUsername,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    TResult Function()? refreshUserSettings,
    TResult Function(File image)? imagePicked,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? deleteUser,
    TResult Function(String username)? changeUsername,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    TResult Function()? refreshUserSettings,
    TResult Function(File image)? imagePicked,
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
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(ChangeUsername value) changeUsername,
    required TResult Function(RefreshJoinedTeams value) refreshJoinedTeams,
    required TResult Function(RefreshTeamRequests value) refreshTeamRequests,
    required TResult Function(RefreshUserSettings value) refreshUserSettings,
    required TResult Function(ImagePicked value) imagePicked,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    TResult Function(RefreshUserSettings value)? refreshUserSettings,
    TResult Function(ImagePicked value)? imagePicked,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    TResult Function(RefreshUserSettings value)? refreshUserSettings,
    TResult Function(ImagePicked value)? imagePicked,
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
abstract class $DeleteUserCopyWith<$Res> {
  factory $DeleteUserCopyWith(
          DeleteUser value, $Res Function(DeleteUser) then) =
      _$DeleteUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteUserCopyWithImpl<$Res>
    extends _$TeamsFrameworkEventCopyWithImpl<$Res>
    implements $DeleteUserCopyWith<$Res> {
  _$DeleteUserCopyWithImpl(DeleteUser _value, $Res Function(DeleteUser) _then)
      : super(_value, (v) => _then(v as DeleteUser));

  @override
  DeleteUser get _value => super._value as DeleteUser;
}

/// @nodoc

class _$DeleteUser implements DeleteUser {
  const _$DeleteUser();

  @override
  String toString() {
    return 'TeamsFrameworkEvent.deleteUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() deleteUser,
    required TResult Function(String username) changeUsername,
    required TResult Function() refreshJoinedTeams,
    required TResult Function() refreshTeamRequests,
    required TResult Function() refreshUserSettings,
    required TResult Function(File image) imagePicked,
  }) {
    return deleteUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? deleteUser,
    TResult Function(String username)? changeUsername,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    TResult Function()? refreshUserSettings,
    TResult Function(File image)? imagePicked,
  }) {
    return deleteUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? deleteUser,
    TResult Function(String username)? changeUsername,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    TResult Function()? refreshUserSettings,
    TResult Function(File image)? imagePicked,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(ChangeUsername value) changeUsername,
    required TResult Function(RefreshJoinedTeams value) refreshJoinedTeams,
    required TResult Function(RefreshTeamRequests value) refreshTeamRequests,
    required TResult Function(RefreshUserSettings value) refreshUserSettings,
    required TResult Function(ImagePicked value) imagePicked,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    TResult Function(RefreshUserSettings value)? refreshUserSettings,
    TResult Function(ImagePicked value)? imagePicked,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    TResult Function(RefreshUserSettings value)? refreshUserSettings,
    TResult Function(ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class DeleteUser implements TeamsFrameworkEvent {
  const factory DeleteUser() = _$DeleteUser;
}

/// @nodoc
abstract class $ChangeUsernameCopyWith<$Res> {
  factory $ChangeUsernameCopyWith(
          ChangeUsername value, $Res Function(ChangeUsername) then) =
      _$ChangeUsernameCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class _$ChangeUsernameCopyWithImpl<$Res>
    extends _$TeamsFrameworkEventCopyWithImpl<$Res>
    implements $ChangeUsernameCopyWith<$Res> {
  _$ChangeUsernameCopyWithImpl(
      ChangeUsername _value, $Res Function(ChangeUsername) _then)
      : super(_value, (v) => _then(v as ChangeUsername));

  @override
  ChangeUsername get _value => super._value as ChangeUsername;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(ChangeUsername(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeUsername implements ChangeUsername {
  const _$ChangeUsername(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'TeamsFrameworkEvent.changeUsername(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeUsername &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  $ChangeUsernameCopyWith<ChangeUsername> get copyWith =>
      _$ChangeUsernameCopyWithImpl<ChangeUsername>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() deleteUser,
    required TResult Function(String username) changeUsername,
    required TResult Function() refreshJoinedTeams,
    required TResult Function() refreshTeamRequests,
    required TResult Function() refreshUserSettings,
    required TResult Function(File image) imagePicked,
  }) {
    return changeUsername(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? deleteUser,
    TResult Function(String username)? changeUsername,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    TResult Function()? refreshUserSettings,
    TResult Function(File image)? imagePicked,
  }) {
    return changeUsername?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? deleteUser,
    TResult Function(String username)? changeUsername,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    TResult Function()? refreshUserSettings,
    TResult Function(File image)? imagePicked,
    required TResult orElse(),
  }) {
    if (changeUsername != null) {
      return changeUsername(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(ChangeUsername value) changeUsername,
    required TResult Function(RefreshJoinedTeams value) refreshJoinedTeams,
    required TResult Function(RefreshTeamRequests value) refreshTeamRequests,
    required TResult Function(RefreshUserSettings value) refreshUserSettings,
    required TResult Function(ImagePicked value) imagePicked,
  }) {
    return changeUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    TResult Function(RefreshUserSettings value)? refreshUserSettings,
    TResult Function(ImagePicked value)? imagePicked,
  }) {
    return changeUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    TResult Function(RefreshUserSettings value)? refreshUserSettings,
    TResult Function(ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (changeUsername != null) {
      return changeUsername(this);
    }
    return orElse();
  }
}

abstract class ChangeUsername implements TeamsFrameworkEvent {
  const factory ChangeUsername(final String username) = _$ChangeUsername;

  String get username => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeUsernameCopyWith<ChangeUsername> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function() deleteUser,
    required TResult Function(String username) changeUsername,
    required TResult Function() refreshJoinedTeams,
    required TResult Function() refreshTeamRequests,
    required TResult Function() refreshUserSettings,
    required TResult Function(File image) imagePicked,
  }) {
    return refreshJoinedTeams();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? deleteUser,
    TResult Function(String username)? changeUsername,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    TResult Function()? refreshUserSettings,
    TResult Function(File image)? imagePicked,
  }) {
    return refreshJoinedTeams?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? deleteUser,
    TResult Function(String username)? changeUsername,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    TResult Function()? refreshUserSettings,
    TResult Function(File image)? imagePicked,
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
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(ChangeUsername value) changeUsername,
    required TResult Function(RefreshJoinedTeams value) refreshJoinedTeams,
    required TResult Function(RefreshTeamRequests value) refreshTeamRequests,
    required TResult Function(RefreshUserSettings value) refreshUserSettings,
    required TResult Function(ImagePicked value) imagePicked,
  }) {
    return refreshJoinedTeams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    TResult Function(RefreshUserSettings value)? refreshUserSettings,
    TResult Function(ImagePicked value)? imagePicked,
  }) {
    return refreshJoinedTeams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    TResult Function(RefreshUserSettings value)? refreshUserSettings,
    TResult Function(ImagePicked value)? imagePicked,
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
    required TResult Function() deleteUser,
    required TResult Function(String username) changeUsername,
    required TResult Function() refreshJoinedTeams,
    required TResult Function() refreshTeamRequests,
    required TResult Function() refreshUserSettings,
    required TResult Function(File image) imagePicked,
  }) {
    return refreshTeamRequests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? deleteUser,
    TResult Function(String username)? changeUsername,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    TResult Function()? refreshUserSettings,
    TResult Function(File image)? imagePicked,
  }) {
    return refreshTeamRequests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? deleteUser,
    TResult Function(String username)? changeUsername,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    TResult Function()? refreshUserSettings,
    TResult Function(File image)? imagePicked,
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
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(ChangeUsername value) changeUsername,
    required TResult Function(RefreshJoinedTeams value) refreshJoinedTeams,
    required TResult Function(RefreshTeamRequests value) refreshTeamRequests,
    required TResult Function(RefreshUserSettings value) refreshUserSettings,
    required TResult Function(ImagePicked value) imagePicked,
  }) {
    return refreshTeamRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    TResult Function(RefreshUserSettings value)? refreshUserSettings,
    TResult Function(ImagePicked value)? imagePicked,
  }) {
    return refreshTeamRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    TResult Function(RefreshUserSettings value)? refreshUserSettings,
    TResult Function(ImagePicked value)? imagePicked,
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
abstract class $RefreshUserSettingsCopyWith<$Res> {
  factory $RefreshUserSettingsCopyWith(
          RefreshUserSettings value, $Res Function(RefreshUserSettings) then) =
      _$RefreshUserSettingsCopyWithImpl<$Res>;
}

/// @nodoc
class _$RefreshUserSettingsCopyWithImpl<$Res>
    extends _$TeamsFrameworkEventCopyWithImpl<$Res>
    implements $RefreshUserSettingsCopyWith<$Res> {
  _$RefreshUserSettingsCopyWithImpl(
      RefreshUserSettings _value, $Res Function(RefreshUserSettings) _then)
      : super(_value, (v) => _then(v as RefreshUserSettings));

  @override
  RefreshUserSettings get _value => super._value as RefreshUserSettings;
}

/// @nodoc

class _$RefreshUserSettings implements RefreshUserSettings {
  const _$RefreshUserSettings();

  @override
  String toString() {
    return 'TeamsFrameworkEvent.refreshUserSettings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RefreshUserSettings);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() deleteUser,
    required TResult Function(String username) changeUsername,
    required TResult Function() refreshJoinedTeams,
    required TResult Function() refreshTeamRequests,
    required TResult Function() refreshUserSettings,
    required TResult Function(File image) imagePicked,
  }) {
    return refreshUserSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? deleteUser,
    TResult Function(String username)? changeUsername,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    TResult Function()? refreshUserSettings,
    TResult Function(File image)? imagePicked,
  }) {
    return refreshUserSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? deleteUser,
    TResult Function(String username)? changeUsername,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    TResult Function()? refreshUserSettings,
    TResult Function(File image)? imagePicked,
    required TResult orElse(),
  }) {
    if (refreshUserSettings != null) {
      return refreshUserSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(ChangeUsername value) changeUsername,
    required TResult Function(RefreshJoinedTeams value) refreshJoinedTeams,
    required TResult Function(RefreshTeamRequests value) refreshTeamRequests,
    required TResult Function(RefreshUserSettings value) refreshUserSettings,
    required TResult Function(ImagePicked value) imagePicked,
  }) {
    return refreshUserSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    TResult Function(RefreshUserSettings value)? refreshUserSettings,
    TResult Function(ImagePicked value)? imagePicked,
  }) {
    return refreshUserSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    TResult Function(RefreshUserSettings value)? refreshUserSettings,
    TResult Function(ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (refreshUserSettings != null) {
      return refreshUserSettings(this);
    }
    return orElse();
  }
}

abstract class RefreshUserSettings implements TeamsFrameworkEvent {
  const factory RefreshUserSettings() = _$RefreshUserSettings;
}

/// @nodoc
abstract class $ImagePickedCopyWith<$Res> {
  factory $ImagePickedCopyWith(
          ImagePicked value, $Res Function(ImagePicked) then) =
      _$ImagePickedCopyWithImpl<$Res>;
  $Res call({File image});
}

/// @nodoc
class _$ImagePickedCopyWithImpl<$Res>
    extends _$TeamsFrameworkEventCopyWithImpl<$Res>
    implements $ImagePickedCopyWith<$Res> {
  _$ImagePickedCopyWithImpl(
      ImagePicked _value, $Res Function(ImagePicked) _then)
      : super(_value, (v) => _then(v as ImagePicked));

  @override
  ImagePicked get _value => super._value as ImagePicked;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(ImagePicked(
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$ImagePicked implements ImagePicked {
  const _$ImagePicked(this.image);

  @override
  final File image;

  @override
  String toString() {
    return 'TeamsFrameworkEvent.imagePicked(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImagePicked &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  $ImagePickedCopyWith<ImagePicked> get copyWith =>
      _$ImagePickedCopyWithImpl<ImagePicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signOut,
    required TResult Function() deleteUser,
    required TResult Function(String username) changeUsername,
    required TResult Function() refreshJoinedTeams,
    required TResult Function() refreshTeamRequests,
    required TResult Function() refreshUserSettings,
    required TResult Function(File image) imagePicked,
  }) {
    return imagePicked(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? deleteUser,
    TResult Function(String username)? changeUsername,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    TResult Function()? refreshUserSettings,
    TResult Function(File image)? imagePicked,
  }) {
    return imagePicked?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    TResult Function()? deleteUser,
    TResult Function(String username)? changeUsername,
    TResult Function()? refreshJoinedTeams,
    TResult Function()? refreshTeamRequests,
    TResult Function()? refreshUserSettings,
    TResult Function(File image)? imagePicked,
    required TResult orElse(),
  }) {
    if (imagePicked != null) {
      return imagePicked(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(ChangeUsername value) changeUsername,
    required TResult Function(RefreshJoinedTeams value) refreshJoinedTeams,
    required TResult Function(RefreshTeamRequests value) refreshTeamRequests,
    required TResult Function(RefreshUserSettings value) refreshUserSettings,
    required TResult Function(ImagePicked value) imagePicked,
  }) {
    return imagePicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    TResult Function(RefreshUserSettings value)? refreshUserSettings,
    TResult Function(ImagePicked value)? imagePicked,
  }) {
    return imagePicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(ChangeUsername value)? changeUsername,
    TResult Function(RefreshJoinedTeams value)? refreshJoinedTeams,
    TResult Function(RefreshTeamRequests value)? refreshTeamRequests,
    TResult Function(RefreshUserSettings value)? refreshUserSettings,
    TResult Function(ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (imagePicked != null) {
      return imagePicked(this);
    }
    return orElse();
  }
}

abstract class ImagePicked implements TeamsFrameworkEvent {
  const factory ImagePicked(final File image) = _$ImagePicked;

  File get image => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagePickedCopyWith<ImagePicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TeamsFrameworkState {
  bool get shouldSignOut => throw _privateConstructorUsedError;
  bool get joinedTeamsRefreshing => throw _privateConstructorUsedError;
  bool get teamRequestsRefreshing => throw _privateConstructorUsedError;
  bool get userSettingsRefreshing => throw _privateConstructorUsedError;
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
  Option<String> get userImageURL => throw _privateConstructorUsedError;

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
      bool joinedTeamsRefreshing,
      bool teamRequestsRefreshing,
      bool userSettingsRefreshing,
      Either<TeamFailure, KtList<Team>> joinedTeams,
      Either<TeamFailure, Unit> joinedTeamsFetchFailureOrSuccess,
      KtList<Tuple2<Team, Option<String>>> joinedTeamURLs,
      Either<TeamFailure, KtList<Team>> teamRequests,
      Either<TeamFailure, Unit> teamRequestsFetchFailureOrSuccess,
      KtList<Tuple2<Team, Option<String>>> teamRequestURLs,
      Option<String> userImageURL});
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
    Object? joinedTeamsRefreshing = freezed,
    Object? teamRequestsRefreshing = freezed,
    Object? userSettingsRefreshing = freezed,
    Object? joinedTeams = freezed,
    Object? joinedTeamsFetchFailureOrSuccess = freezed,
    Object? joinedTeamURLs = freezed,
    Object? teamRequests = freezed,
    Object? teamRequestsFetchFailureOrSuccess = freezed,
    Object? teamRequestURLs = freezed,
    Object? userImageURL = freezed,
  }) {
    return _then(_value.copyWith(
      shouldSignOut: shouldSignOut == freezed
          ? _value.shouldSignOut
          : shouldSignOut // ignore: cast_nullable_to_non_nullable
              as bool,
      joinedTeamsRefreshing: joinedTeamsRefreshing == freezed
          ? _value.joinedTeamsRefreshing
          : joinedTeamsRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      teamRequestsRefreshing: teamRequestsRefreshing == freezed
          ? _value.teamRequestsRefreshing
          : teamRequestsRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      userSettingsRefreshing: userSettingsRefreshing == freezed
          ? _value.userSettingsRefreshing
          : userSettingsRefreshing // ignore: cast_nullable_to_non_nullable
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
      userImageURL: userImageURL == freezed
          ? _value.userImageURL
          : userImageURL // ignore: cast_nullable_to_non_nullable
              as Option<String>,
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
      bool joinedTeamsRefreshing,
      bool teamRequestsRefreshing,
      bool userSettingsRefreshing,
      Either<TeamFailure, KtList<Team>> joinedTeams,
      Either<TeamFailure, Unit> joinedTeamsFetchFailureOrSuccess,
      KtList<Tuple2<Team, Option<String>>> joinedTeamURLs,
      Either<TeamFailure, KtList<Team>> teamRequests,
      Either<TeamFailure, Unit> teamRequestsFetchFailureOrSuccess,
      KtList<Tuple2<Team, Option<String>>> teamRequestURLs,
      Option<String> userImageURL});
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
    Object? joinedTeamsRefreshing = freezed,
    Object? teamRequestsRefreshing = freezed,
    Object? userSettingsRefreshing = freezed,
    Object? joinedTeams = freezed,
    Object? joinedTeamsFetchFailureOrSuccess = freezed,
    Object? joinedTeamURLs = freezed,
    Object? teamRequests = freezed,
    Object? teamRequestsFetchFailureOrSuccess = freezed,
    Object? teamRequestURLs = freezed,
    Object? userImageURL = freezed,
  }) {
    return _then(_TeamsFrameworkState(
      shouldSignOut: shouldSignOut == freezed
          ? _value.shouldSignOut
          : shouldSignOut // ignore: cast_nullable_to_non_nullable
              as bool,
      joinedTeamsRefreshing: joinedTeamsRefreshing == freezed
          ? _value.joinedTeamsRefreshing
          : joinedTeamsRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      teamRequestsRefreshing: teamRequestsRefreshing == freezed
          ? _value.teamRequestsRefreshing
          : teamRequestsRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      userSettingsRefreshing: userSettingsRefreshing == freezed
          ? _value.userSettingsRefreshing
          : userSettingsRefreshing // ignore: cast_nullable_to_non_nullable
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
      userImageURL: userImageURL == freezed
          ? _value.userImageURL
          : userImageURL // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_TeamsFrameworkState implements _TeamsFrameworkState {
  const _$_TeamsFrameworkState(
      {required this.shouldSignOut,
      required this.joinedTeamsRefreshing,
      required this.teamRequestsRefreshing,
      required this.userSettingsRefreshing,
      required this.joinedTeams,
      required this.joinedTeamsFetchFailureOrSuccess,
      required this.joinedTeamURLs,
      required this.teamRequests,
      required this.teamRequestsFetchFailureOrSuccess,
      required this.teamRequestURLs,
      required this.userImageURL});

  @override
  final bool shouldSignOut;
  @override
  final bool joinedTeamsRefreshing;
  @override
  final bool teamRequestsRefreshing;
  @override
  final bool userSettingsRefreshing;
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
  final Option<String> userImageURL;

  @override
  String toString() {
    return 'TeamsFrameworkState(shouldSignOut: $shouldSignOut, joinedTeamsRefreshing: $joinedTeamsRefreshing, teamRequestsRefreshing: $teamRequestsRefreshing, userSettingsRefreshing: $userSettingsRefreshing, joinedTeams: $joinedTeams, joinedTeamsFetchFailureOrSuccess: $joinedTeamsFetchFailureOrSuccess, joinedTeamURLs: $joinedTeamURLs, teamRequests: $teamRequests, teamRequestsFetchFailureOrSuccess: $teamRequestsFetchFailureOrSuccess, teamRequestURLs: $teamRequestURLs, userImageURL: $userImageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TeamsFrameworkState &&
            const DeepCollectionEquality()
                .equals(other.shouldSignOut, shouldSignOut) &&
            const DeepCollectionEquality()
                .equals(other.joinedTeamsRefreshing, joinedTeamsRefreshing) &&
            const DeepCollectionEquality()
                .equals(other.teamRequestsRefreshing, teamRequestsRefreshing) &&
            const DeepCollectionEquality()
                .equals(other.userSettingsRefreshing, userSettingsRefreshing) &&
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
                .equals(other.teamRequestURLs, teamRequestURLs) &&
            const DeepCollectionEquality()
                .equals(other.userImageURL, userImageURL));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shouldSignOut),
      const DeepCollectionEquality().hash(joinedTeamsRefreshing),
      const DeepCollectionEquality().hash(teamRequestsRefreshing),
      const DeepCollectionEquality().hash(userSettingsRefreshing),
      const DeepCollectionEquality().hash(joinedTeams),
      const DeepCollectionEquality().hash(joinedTeamsFetchFailureOrSuccess),
      const DeepCollectionEquality().hash(joinedTeamURLs),
      const DeepCollectionEquality().hash(teamRequests),
      const DeepCollectionEquality().hash(teamRequestsFetchFailureOrSuccess),
      const DeepCollectionEquality().hash(teamRequestURLs),
      const DeepCollectionEquality().hash(userImageURL));

  @JsonKey(ignore: true)
  @override
  _$TeamsFrameworkStateCopyWith<_TeamsFrameworkState> get copyWith =>
      __$TeamsFrameworkStateCopyWithImpl<_TeamsFrameworkState>(
          this, _$identity);
}

abstract class _TeamsFrameworkState implements TeamsFrameworkState {
  const factory _TeamsFrameworkState(
      {required final bool shouldSignOut,
      required final bool joinedTeamsRefreshing,
      required final bool teamRequestsRefreshing,
      required final bool userSettingsRefreshing,
      required final Either<TeamFailure, KtList<Team>> joinedTeams,
      required final Either<TeamFailure, Unit> joinedTeamsFetchFailureOrSuccess,
      required final KtList<Tuple2<Team, Option<String>>> joinedTeamURLs,
      required final Either<TeamFailure, KtList<Team>> teamRequests,
      required final Either<TeamFailure, Unit>
          teamRequestsFetchFailureOrSuccess,
      required final KtList<Tuple2<Team, Option<String>>> teamRequestURLs,
      required final Option<String> userImageURL}) = _$_TeamsFrameworkState;

  @override
  bool get shouldSignOut => throw _privateConstructorUsedError;
  @override
  bool get joinedTeamsRefreshing => throw _privateConstructorUsedError;
  @override
  bool get teamRequestsRefreshing => throw _privateConstructorUsedError;
  @override
  bool get userSettingsRefreshing => throw _privateConstructorUsedError;
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
  Option<String> get userImageURL => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TeamsFrameworkStateCopyWith<_TeamsFrameworkState> get copyWith =>
      throw _privateConstructorUsedError;
}
