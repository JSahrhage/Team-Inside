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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
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
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signOut,
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
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignOut value)? signOut,
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
mixin _$TeamsFrameworkState {
  bool get shouldSignOut => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeamsFrameworkStateCopyWith<TeamsFrameworkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamsFrameworkStateCopyWith<$Res> {
  factory $TeamsFrameworkStateCopyWith(
          TeamsFrameworkState value, $Res Function(TeamsFrameworkState) then) =
      _$TeamsFrameworkStateCopyWithImpl<$Res>;
  $Res call({bool shouldSignOut});
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
  }) {
    return _then(_value.copyWith(
      shouldSignOut: shouldSignOut == freezed
          ? _value.shouldSignOut
          : shouldSignOut // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({bool shouldSignOut});
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
  }) {
    return _then(_TeamsFrameworkState(
      shouldSignOut: shouldSignOut == freezed
          ? _value.shouldSignOut
          : shouldSignOut // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TeamsFrameworkState implements _TeamsFrameworkState {
  const _$_TeamsFrameworkState({required this.shouldSignOut});

  @override
  final bool shouldSignOut;

  @override
  String toString() {
    return 'TeamsFrameworkState(shouldSignOut: $shouldSignOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TeamsFrameworkState &&
            const DeepCollectionEquality()
                .equals(other.shouldSignOut, shouldSignOut));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(shouldSignOut));

  @JsonKey(ignore: true)
  @override
  _$TeamsFrameworkStateCopyWith<_TeamsFrameworkState> get copyWith =>
      __$TeamsFrameworkStateCopyWithImpl<_TeamsFrameworkState>(
          this, _$identity);
}

abstract class _TeamsFrameworkState implements TeamsFrameworkState {
  const factory _TeamsFrameworkState({required final bool shouldSignOut}) =
      _$_TeamsFrameworkState;

  @override
  bool get shouldSignOut => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TeamsFrameworkStateCopyWith<_TeamsFrameworkState> get copyWith =>
      throw _privateConstructorUsedError;
}
