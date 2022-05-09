// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'password_reset_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PasswordResetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() sendPasswordResetEmailPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? sendPasswordResetEmailPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? sendPasswordResetEmailPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SendPasswordResetEmailPressed value)
        sendPasswordResetEmailPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SendPasswordResetEmailPressed value)?
        sendPasswordResetEmailPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SendPasswordResetEmailPressed value)?
        sendPasswordResetEmailPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordResetEventCopyWith<$Res> {
  factory $PasswordResetEventCopyWith(
          PasswordResetEvent value, $Res Function(PasswordResetEvent) then) =
      _$PasswordResetEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordResetEventCopyWithImpl<$Res>
    implements $PasswordResetEventCopyWith<$Res> {
  _$PasswordResetEventCopyWithImpl(this._value, this._then);

  final PasswordResetEvent _value;
  // ignore: unused_field
  final $Res Function(PasswordResetEvent) _then;
}

/// @nodoc
abstract class _$$EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedCopyWith(
          _$EmailChanged value, $Res Function(_$EmailChanged) then) =
      __$$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedCopyWithImpl<$Res>
    extends _$PasswordResetEventCopyWithImpl<$Res>
    implements _$$EmailChangedCopyWith<$Res> {
  __$$EmailChangedCopyWithImpl(
      _$EmailChanged _value, $Res Function(_$EmailChanged) _then)
      : super(_value, (v) => _then(v as _$EmailChanged));

  @override
  _$EmailChanged get _value => super._value as _$EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'PasswordResetEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChanged &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      __$$EmailChangedCopyWithImpl<_$EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() sendPasswordResetEmailPressed,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? sendPasswordResetEmailPressed,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? sendPasswordResetEmailPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SendPasswordResetEmailPressed value)
        sendPasswordResetEmailPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SendPasswordResetEmailPressed value)?
        sendPasswordResetEmailPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SendPasswordResetEmailPressed value)?
        sendPasswordResetEmailPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements PasswordResetEvent {
  const factory EmailChanged(final String email) = _$EmailChanged;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendPasswordResetEmailPressedCopyWith<$Res> {
  factory _$$SendPasswordResetEmailPressedCopyWith(
          _$SendPasswordResetEmailPressed value,
          $Res Function(_$SendPasswordResetEmailPressed) then) =
      __$$SendPasswordResetEmailPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendPasswordResetEmailPressedCopyWithImpl<$Res>
    extends _$PasswordResetEventCopyWithImpl<$Res>
    implements _$$SendPasswordResetEmailPressedCopyWith<$Res> {
  __$$SendPasswordResetEmailPressedCopyWithImpl(
      _$SendPasswordResetEmailPressed _value,
      $Res Function(_$SendPasswordResetEmailPressed) _then)
      : super(_value, (v) => _then(v as _$SendPasswordResetEmailPressed));

  @override
  _$SendPasswordResetEmailPressed get _value =>
      super._value as _$SendPasswordResetEmailPressed;
}

/// @nodoc

class _$SendPasswordResetEmailPressed implements SendPasswordResetEmailPressed {
  const _$SendPasswordResetEmailPressed();

  @override
  String toString() {
    return 'PasswordResetEvent.sendPasswordResetEmailPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPasswordResetEmailPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() sendPasswordResetEmailPressed,
  }) {
    return sendPasswordResetEmailPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? sendPasswordResetEmailPressed,
  }) {
    return sendPasswordResetEmailPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? sendPasswordResetEmailPressed,
    required TResult orElse(),
  }) {
    if (sendPasswordResetEmailPressed != null) {
      return sendPasswordResetEmailPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(SendPasswordResetEmailPressed value)
        sendPasswordResetEmailPressed,
  }) {
    return sendPasswordResetEmailPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SendPasswordResetEmailPressed value)?
        sendPasswordResetEmailPressed,
  }) {
    return sendPasswordResetEmailPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(SendPasswordResetEmailPressed value)?
        sendPasswordResetEmailPressed,
    required TResult orElse(),
  }) {
    if (sendPasswordResetEmailPressed != null) {
      return sendPasswordResetEmailPressed(this);
    }
    return orElse();
  }
}

abstract class SendPasswordResetEmailPressed implements PasswordResetEvent {
  const factory SendPasswordResetEmailPressed() =
      _$SendPasswordResetEmailPressed;
}

/// @nodoc
mixin _$PasswordResetState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get stateFlipper =>
      throw _privateConstructorUsedError; // Required to fire stateChange when .copyWith is called
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordResetStateCopyWith<PasswordResetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordResetStateCopyWith<$Res> {
  factory $PasswordResetStateCopyWith(
          PasswordResetState value, $Res Function(PasswordResetState) then) =
      _$PasswordResetStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      bool isSubmitting,
      bool stateFlipper,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$PasswordResetStateCopyWithImpl<$Res>
    implements $PasswordResetStateCopyWith<$Res> {
  _$PasswordResetStateCopyWithImpl(this._value, this._then);

  final PasswordResetState _value;
  // ignore: unused_field
  final $Res Function(PasswordResetState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? isSubmitting = freezed,
    Object? stateFlipper = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      stateFlipper: stateFlipper == freezed
          ? _value.stateFlipper
          : stateFlipper // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$$_PasswordResetStateCopyWith<$Res>
    implements $PasswordResetStateCopyWith<$Res> {
  factory _$$_PasswordResetStateCopyWith(_$_PasswordResetState value,
          $Res Function(_$_PasswordResetState) then) =
      __$$_PasswordResetStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      bool isSubmitting,
      bool stateFlipper,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_PasswordResetStateCopyWithImpl<$Res>
    extends _$PasswordResetStateCopyWithImpl<$Res>
    implements _$$_PasswordResetStateCopyWith<$Res> {
  __$$_PasswordResetStateCopyWithImpl(
      _$_PasswordResetState _value, $Res Function(_$_PasswordResetState) _then)
      : super(_value, (v) => _then(v as _$_PasswordResetState));

  @override
  _$_PasswordResetState get _value => super._value as _$_PasswordResetState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? isSubmitting = freezed,
    Object? stateFlipper = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_PasswordResetState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      stateFlipper: stateFlipper == freezed
          ? _value.stateFlipper
          : stateFlipper // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_PasswordResetState implements _PasswordResetState {
  const _$_PasswordResetState(
      {required this.emailAddress,
      required this.isSubmitting,
      required this.stateFlipper,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final bool isSubmitting;
  @override
  final bool stateFlipper;
// Required to fire stateChange when .copyWith is called
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'PasswordResetState(emailAddress: $emailAddress, isSubmitting: $isSubmitting, stateFlipper: $stateFlipper, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordResetState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other.stateFlipper, stateFlipper) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(stateFlipper),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_PasswordResetStateCopyWith<_$_PasswordResetState> get copyWith =>
      __$$_PasswordResetStateCopyWithImpl<_$_PasswordResetState>(
          this, _$identity);
}

abstract class _PasswordResetState implements PasswordResetState {
  const factory _PasswordResetState(
      {required final EmailAddress emailAddress,
      required final bool isSubmitting,
      required final bool stateFlipper,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_PasswordResetState;

  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get stateFlipper => throw _privateConstructorUsedError;
  @override // Required to fire stateChange when .copyWith is called
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordResetStateCopyWith<_$_PasswordResetState> get copyWith =>
      throw _privateConstructorUsedError;
}
