// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'evaluation_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EvaluationEntry {
  UniqueId get id => throw _privateConstructorUsedError;
  UniqueId get workoutId => throw _privateConstructorUsedError;
  UniqueId get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EvaluationEntryCopyWith<EvaluationEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvaluationEntryCopyWith<$Res> {
  factory $EvaluationEntryCopyWith(
          EvaluationEntry value, $Res Function(EvaluationEntry) then) =
      _$EvaluationEntryCopyWithImpl<$Res>;
  $Res call({UniqueId id, UniqueId workoutId, UniqueId userId});
}

/// @nodoc
class _$EvaluationEntryCopyWithImpl<$Res>
    implements $EvaluationEntryCopyWith<$Res> {
  _$EvaluationEntryCopyWithImpl(this._value, this._then);

  final EvaluationEntry _value;
  // ignore: unused_field
  final $Res Function(EvaluationEntry) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? workoutId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      workoutId: workoutId == freezed
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc
abstract class _$$_EvaluationEntryCopyWith<$Res>
    implements $EvaluationEntryCopyWith<$Res> {
  factory _$$_EvaluationEntryCopyWith(
          _$_EvaluationEntry value, $Res Function(_$_EvaluationEntry) then) =
      __$$_EvaluationEntryCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, UniqueId workoutId, UniqueId userId});
}

/// @nodoc
class __$$_EvaluationEntryCopyWithImpl<$Res>
    extends _$EvaluationEntryCopyWithImpl<$Res>
    implements _$$_EvaluationEntryCopyWith<$Res> {
  __$$_EvaluationEntryCopyWithImpl(
      _$_EvaluationEntry _value, $Res Function(_$_EvaluationEntry) _then)
      : super(_value, (v) => _then(v as _$_EvaluationEntry));

  @override
  _$_EvaluationEntry get _value => super._value as _$_EvaluationEntry;

  @override
  $Res call({
    Object? id = freezed,
    Object? workoutId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_EvaluationEntry(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      workoutId: workoutId == freezed
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_EvaluationEntry extends _EvaluationEntry {
  const _$_EvaluationEntry(
      {required this.id, required this.workoutId, required this.userId})
      : super._();

  @override
  final UniqueId id;
  @override
  final UniqueId workoutId;
  @override
  final UniqueId userId;

  @override
  String toString() {
    return 'EvaluationEntry(id: $id, workoutId: $workoutId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EvaluationEntry &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.workoutId, workoutId) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(workoutId),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$_EvaluationEntryCopyWith<_$_EvaluationEntry> get copyWith =>
      __$$_EvaluationEntryCopyWithImpl<_$_EvaluationEntry>(this, _$identity);
}

abstract class _EvaluationEntry extends EvaluationEntry {
  const factory _EvaluationEntry(
      {required final UniqueId id,
      required final UniqueId workoutId,
      required final UniqueId userId}) = _$_EvaluationEntry;
  const _EvaluationEntry._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  UniqueId get workoutId => throw _privateConstructorUsedError;
  @override
  UniqueId get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EvaluationEntryCopyWith<_$_EvaluationEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
