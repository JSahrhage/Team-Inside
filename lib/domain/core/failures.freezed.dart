// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyValue,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) unsecurePassword,
    required TResult Function(T firstFailedValue, T secondFailedValue)
        notMatchingPasswords,
    required TResult Function(T failedValue) invalidUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyValue,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? unsecurePassword,
    TResult Function(T firstFailedValue, T secondFailedValue)?
        notMatchingPasswords,
    TResult Function(T failedValue)? invalidUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyValue,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? unsecurePassword,
    TResult Function(T firstFailedValue, T secondFailedValue)?
        notMatchingPasswords,
    TResult Function(T failedValue)? invalidUsername,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyValue<T> value) emptyValue,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnsecurePassword<T> value) unsecurePassword,
    required TResult Function(NotMatchingPasswords<T> value)
        notMatchingPasswords,
    required TResult Function(InvalidUsername<T> value) invalidUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnsecurePassword<T> value)? unsecurePassword,
    TResult Function(NotMatchingPasswords<T> value)? notMatchingPasswords,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnsecurePassword<T> value)? unsecurePassword,
    TResult Function(NotMatchingPasswords<T> value)? notMatchingPasswords,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $EmptyValueCopyWith<T, $Res> {
  factory $EmptyValueCopyWith(
          EmptyValue<T> value, $Res Function(EmptyValue<T>) then) =
      _$EmptyValueCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyValueCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyValueCopyWith<T, $Res> {
  _$EmptyValueCopyWithImpl(
      EmptyValue<T> _value, $Res Function(EmptyValue<T>) _then)
      : super(_value, (v) => _then(v as EmptyValue<T>));

  @override
  EmptyValue<T> get _value => super._value as EmptyValue<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(EmptyValue<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyValue<T> implements EmptyValue<T> {
  const _$EmptyValue({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.emptyValue(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmptyValue<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $EmptyValueCopyWith<T, EmptyValue<T>> get copyWith =>
      _$EmptyValueCopyWithImpl<T, EmptyValue<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyValue,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) unsecurePassword,
    required TResult Function(T firstFailedValue, T secondFailedValue)
        notMatchingPasswords,
    required TResult Function(T failedValue) invalidUsername,
  }) {
    return emptyValue(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyValue,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? unsecurePassword,
    TResult Function(T firstFailedValue, T secondFailedValue)?
        notMatchingPasswords,
    TResult Function(T failedValue)? invalidUsername,
  }) {
    return emptyValue?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyValue,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? unsecurePassword,
    TResult Function(T firstFailedValue, T secondFailedValue)?
        notMatchingPasswords,
    TResult Function(T failedValue)? invalidUsername,
    required TResult orElse(),
  }) {
    if (emptyValue != null) {
      return emptyValue(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyValue<T> value) emptyValue,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnsecurePassword<T> value) unsecurePassword,
    required TResult Function(NotMatchingPasswords<T> value)
        notMatchingPasswords,
    required TResult Function(InvalidUsername<T> value) invalidUsername,
  }) {
    return emptyValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnsecurePassword<T> value)? unsecurePassword,
    TResult Function(NotMatchingPasswords<T> value)? notMatchingPasswords,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
  }) {
    return emptyValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnsecurePassword<T> value)? unsecurePassword,
    TResult Function(NotMatchingPasswords<T> value)? notMatchingPasswords,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    required TResult orElse(),
  }) {
    if (emptyValue != null) {
      return emptyValue(this);
    }
    return orElse();
  }
}

abstract class EmptyValue<T> implements ValueFailure<T> {
  const factory EmptyValue({required final T failedValue}) = _$EmptyValue<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmptyValueCopyWith<T, EmptyValue<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyValue,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) unsecurePassword,
    required TResult Function(T firstFailedValue, T secondFailedValue)
        notMatchingPasswords,
    required TResult Function(T failedValue) invalidUsername,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyValue,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? unsecurePassword,
    TResult Function(T firstFailedValue, T secondFailedValue)?
        notMatchingPasswords,
    TResult Function(T failedValue)? invalidUsername,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyValue,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? unsecurePassword,
    TResult Function(T firstFailedValue, T secondFailedValue)?
        notMatchingPasswords,
    TResult Function(T failedValue)? invalidUsername,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyValue<T> value) emptyValue,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnsecurePassword<T> value) unsecurePassword,
    required TResult Function(NotMatchingPasswords<T> value)
        notMatchingPasswords,
    required TResult Function(InvalidUsername<T> value) invalidUsername,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnsecurePassword<T> value)? unsecurePassword,
    TResult Function(NotMatchingPasswords<T> value)? notMatchingPasswords,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnsecurePassword<T> value)? unsecurePassword,
    TResult Function(NotMatchingPasswords<T> value)? notMatchingPasswords,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required final T failedValue}) =
      _$InvalidEmail<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnsecurePasswordCopyWith<T, $Res> {
  factory $UnsecurePasswordCopyWith(
          UnsecurePassword<T> value, $Res Function(UnsecurePassword<T>) then) =
      _$UnsecurePasswordCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$UnsecurePasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $UnsecurePasswordCopyWith<T, $Res> {
  _$UnsecurePasswordCopyWithImpl(
      UnsecurePassword<T> _value, $Res Function(UnsecurePassword<T>) _then)
      : super(_value, (v) => _then(v as UnsecurePassword<T>));

  @override
  UnsecurePassword<T> get _value => super._value as UnsecurePassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(UnsecurePassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$UnsecurePassword<T> implements UnsecurePassword<T> {
  const _$UnsecurePassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.unsecurePassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnsecurePassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $UnsecurePasswordCopyWith<T, UnsecurePassword<T>> get copyWith =>
      _$UnsecurePasswordCopyWithImpl<T, UnsecurePassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyValue,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) unsecurePassword,
    required TResult Function(T firstFailedValue, T secondFailedValue)
        notMatchingPasswords,
    required TResult Function(T failedValue) invalidUsername,
  }) {
    return unsecurePassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyValue,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? unsecurePassword,
    TResult Function(T firstFailedValue, T secondFailedValue)?
        notMatchingPasswords,
    TResult Function(T failedValue)? invalidUsername,
  }) {
    return unsecurePassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyValue,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? unsecurePassword,
    TResult Function(T firstFailedValue, T secondFailedValue)?
        notMatchingPasswords,
    TResult Function(T failedValue)? invalidUsername,
    required TResult orElse(),
  }) {
    if (unsecurePassword != null) {
      return unsecurePassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyValue<T> value) emptyValue,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnsecurePassword<T> value) unsecurePassword,
    required TResult Function(NotMatchingPasswords<T> value)
        notMatchingPasswords,
    required TResult Function(InvalidUsername<T> value) invalidUsername,
  }) {
    return unsecurePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnsecurePassword<T> value)? unsecurePassword,
    TResult Function(NotMatchingPasswords<T> value)? notMatchingPasswords,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
  }) {
    return unsecurePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnsecurePassword<T> value)? unsecurePassword,
    TResult Function(NotMatchingPasswords<T> value)? notMatchingPasswords,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    required TResult orElse(),
  }) {
    if (unsecurePassword != null) {
      return unsecurePassword(this);
    }
    return orElse();
  }
}

abstract class UnsecurePassword<T> implements ValueFailure<T> {
  const factory UnsecurePassword({required final T failedValue}) =
      _$UnsecurePassword<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnsecurePasswordCopyWith<T, UnsecurePassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotMatchingPasswordsCopyWith<T, $Res> {
  factory $NotMatchingPasswordsCopyWith(NotMatchingPasswords<T> value,
          $Res Function(NotMatchingPasswords<T>) then) =
      _$NotMatchingPasswordsCopyWithImpl<T, $Res>;
  $Res call({T firstFailedValue, T secondFailedValue});
}

/// @nodoc
class _$NotMatchingPasswordsCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NotMatchingPasswordsCopyWith<T, $Res> {
  _$NotMatchingPasswordsCopyWithImpl(NotMatchingPasswords<T> _value,
      $Res Function(NotMatchingPasswords<T>) _then)
      : super(_value, (v) => _then(v as NotMatchingPasswords<T>));

  @override
  NotMatchingPasswords<T> get _value => super._value as NotMatchingPasswords<T>;

  @override
  $Res call({
    Object? firstFailedValue = freezed,
    Object? secondFailedValue = freezed,
  }) {
    return _then(NotMatchingPasswords<T>(
      firstFailedValue: firstFailedValue == freezed
          ? _value.firstFailedValue
          : firstFailedValue // ignore: cast_nullable_to_non_nullable
              as T,
      secondFailedValue: secondFailedValue == freezed
          ? _value.secondFailedValue
          : secondFailedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NotMatchingPasswords<T> implements NotMatchingPasswords<T> {
  const _$NotMatchingPasswords(
      {required this.firstFailedValue, required this.secondFailedValue});

  @override
  final T firstFailedValue;
  @override
  final T secondFailedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.notMatchingPasswords(firstFailedValue: $firstFailedValue, secondFailedValue: $secondFailedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotMatchingPasswords<T> &&
            const DeepCollectionEquality()
                .equals(other.firstFailedValue, firstFailedValue) &&
            const DeepCollectionEquality()
                .equals(other.secondFailedValue, secondFailedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstFailedValue),
      const DeepCollectionEquality().hash(secondFailedValue));

  @JsonKey(ignore: true)
  @override
  $NotMatchingPasswordsCopyWith<T, NotMatchingPasswords<T>> get copyWith =>
      _$NotMatchingPasswordsCopyWithImpl<T, NotMatchingPasswords<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyValue,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) unsecurePassword,
    required TResult Function(T firstFailedValue, T secondFailedValue)
        notMatchingPasswords,
    required TResult Function(T failedValue) invalidUsername,
  }) {
    return notMatchingPasswords(firstFailedValue, secondFailedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyValue,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? unsecurePassword,
    TResult Function(T firstFailedValue, T secondFailedValue)?
        notMatchingPasswords,
    TResult Function(T failedValue)? invalidUsername,
  }) {
    return notMatchingPasswords?.call(firstFailedValue, secondFailedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyValue,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? unsecurePassword,
    TResult Function(T firstFailedValue, T secondFailedValue)?
        notMatchingPasswords,
    TResult Function(T failedValue)? invalidUsername,
    required TResult orElse(),
  }) {
    if (notMatchingPasswords != null) {
      return notMatchingPasswords(firstFailedValue, secondFailedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyValue<T> value) emptyValue,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnsecurePassword<T> value) unsecurePassword,
    required TResult Function(NotMatchingPasswords<T> value)
        notMatchingPasswords,
    required TResult Function(InvalidUsername<T> value) invalidUsername,
  }) {
    return notMatchingPasswords(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnsecurePassword<T> value)? unsecurePassword,
    TResult Function(NotMatchingPasswords<T> value)? notMatchingPasswords,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
  }) {
    return notMatchingPasswords?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnsecurePassword<T> value)? unsecurePassword,
    TResult Function(NotMatchingPasswords<T> value)? notMatchingPasswords,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    required TResult orElse(),
  }) {
    if (notMatchingPasswords != null) {
      return notMatchingPasswords(this);
    }
    return orElse();
  }
}

abstract class NotMatchingPasswords<T> implements ValueFailure<T> {
  const factory NotMatchingPasswords(
      {required final T firstFailedValue,
      required final T secondFailedValue}) = _$NotMatchingPasswords<T>;

  T get firstFailedValue => throw _privateConstructorUsedError;
  T get secondFailedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotMatchingPasswordsCopyWith<T, NotMatchingPasswords<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidUsernameCopyWith<T, $Res> {
  factory $InvalidUsernameCopyWith(
          InvalidUsername<T> value, $Res Function(InvalidUsername<T>) then) =
      _$InvalidUsernameCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidUsernameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidUsernameCopyWith<T, $Res> {
  _$InvalidUsernameCopyWithImpl(
      InvalidUsername<T> _value, $Res Function(InvalidUsername<T>) _then)
      : super(_value, (v) => _then(v as InvalidUsername<T>));

  @override
  InvalidUsername<T> get _value => super._value as InvalidUsername<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidUsername<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidUsername<T> implements InvalidUsername<T> {
  const _$InvalidUsername({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUsername(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidUsername<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith =>
      _$InvalidUsernameCopyWithImpl<T, InvalidUsername<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) emptyValue,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) unsecurePassword,
    required TResult Function(T firstFailedValue, T secondFailedValue)
        notMatchingPasswords,
    required TResult Function(T failedValue) invalidUsername,
  }) {
    return invalidUsername(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? emptyValue,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? unsecurePassword,
    TResult Function(T firstFailedValue, T secondFailedValue)?
        notMatchingPasswords,
    TResult Function(T failedValue)? invalidUsername,
  }) {
    return invalidUsername?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? emptyValue,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? unsecurePassword,
    TResult Function(T firstFailedValue, T secondFailedValue)?
        notMatchingPasswords,
    TResult Function(T failedValue)? invalidUsername,
    required TResult orElse(),
  }) {
    if (invalidUsername != null) {
      return invalidUsername(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyValue<T> value) emptyValue,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(UnsecurePassword<T> value) unsecurePassword,
    required TResult Function(NotMatchingPasswords<T> value)
        notMatchingPasswords,
    required TResult Function(InvalidUsername<T> value) invalidUsername,
  }) {
    return invalidUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnsecurePassword<T> value)? unsecurePassword,
    TResult Function(NotMatchingPasswords<T> value)? notMatchingPasswords,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
  }) {
    return invalidUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyValue<T> value)? emptyValue,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(UnsecurePassword<T> value)? unsecurePassword,
    TResult Function(NotMatchingPasswords<T> value)? notMatchingPasswords,
    TResult Function(InvalidUsername<T> value)? invalidUsername,
    required TResult orElse(),
  }) {
    if (invalidUsername != null) {
      return invalidUsername(this);
    }
    return orElse();
  }
}

abstract class InvalidUsername<T> implements ValueFailure<T> {
  const factory InvalidUsername({required final T failedValue}) =
      _$InvalidUsername<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidUsernameCopyWith<T, InvalidUsername<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
