// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Workout {
  UniqueId get id => throw _privateConstructorUsedError;
  WorkoutName get name => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  KtList<EvaluationEntry> get evaluationEntries =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutCopyWith<Workout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutCopyWith<$Res> {
  factory $WorkoutCopyWith(Workout value, $Res Function(Workout) then) =
      _$WorkoutCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      WorkoutName name,
      DateTime dateTime,
      KtList<EvaluationEntry> evaluationEntries});
}

/// @nodoc
class _$WorkoutCopyWithImpl<$Res> implements $WorkoutCopyWith<$Res> {
  _$WorkoutCopyWithImpl(this._value, this._then);

  final Workout _value;
  // ignore: unused_field
  final $Res Function(Workout) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? dateTime = freezed,
    Object? evaluationEntries = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as WorkoutName,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      evaluationEntries: evaluationEntries == freezed
          ? _value.evaluationEntries
          : evaluationEntries // ignore: cast_nullable_to_non_nullable
              as KtList<EvaluationEntry>,
    ));
  }
}

/// @nodoc
abstract class _$$_WorkoutCopyWith<$Res> implements $WorkoutCopyWith<$Res> {
  factory _$$_WorkoutCopyWith(
          _$_Workout value, $Res Function(_$_Workout) then) =
      __$$_WorkoutCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      WorkoutName name,
      DateTime dateTime,
      KtList<EvaluationEntry> evaluationEntries});
}

/// @nodoc
class __$$_WorkoutCopyWithImpl<$Res> extends _$WorkoutCopyWithImpl<$Res>
    implements _$$_WorkoutCopyWith<$Res> {
  __$$_WorkoutCopyWithImpl(_$_Workout _value, $Res Function(_$_Workout) _then)
      : super(_value, (v) => _then(v as _$_Workout));

  @override
  _$_Workout get _value => super._value as _$_Workout;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? dateTime = freezed,
    Object? evaluationEntries = freezed,
  }) {
    return _then(_$_Workout(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as WorkoutName,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      evaluationEntries: evaluationEntries == freezed
          ? _value.evaluationEntries
          : evaluationEntries // ignore: cast_nullable_to_non_nullable
              as KtList<EvaluationEntry>,
    ));
  }
}

/// @nodoc

class _$_Workout extends _Workout {
  const _$_Workout(
      {required this.id,
      required this.name,
      required this.dateTime,
      required this.evaluationEntries})
      : super._();

  @override
  final UniqueId id;
  @override
  final WorkoutName name;
  @override
  final DateTime dateTime;
  @override
  final KtList<EvaluationEntry> evaluationEntries;

  @override
  String toString() {
    return 'Workout(id: $id, name: $name, dateTime: $dateTime, evaluationEntries: $evaluationEntries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Workout &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality()
                .equals(other.evaluationEntries, evaluationEntries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(evaluationEntries));

  @JsonKey(ignore: true)
  @override
  _$$_WorkoutCopyWith<_$_Workout> get copyWith =>
      __$$_WorkoutCopyWithImpl<_$_Workout>(this, _$identity);
}

abstract class _Workout extends Workout {
  const factory _Workout(
      {required final UniqueId id,
      required final WorkoutName name,
      required final DateTime dateTime,
      required final KtList<EvaluationEntry> evaluationEntries}) = _$_Workout;
  const _Workout._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  WorkoutName get name => throw _privateConstructorUsedError;
  @override
  DateTime get dateTime => throw _privateConstructorUsedError;
  @override
  KtList<EvaluationEntry> get evaluationEntries =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutCopyWith<_$_Workout> get copyWith =>
      throw _privateConstructorUsedError;
}
