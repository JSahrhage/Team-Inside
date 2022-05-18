// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'workout_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkoutDTO _$WorkoutDTOFromJson(Map<String, dynamic> json) {
  return _WorkoutDTO.fromJson(json);
}

/// @nodoc
mixin _$WorkoutDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get dateTime => throw _privateConstructorUsedError;
  List<EvaluationEntryDTO> get evaluationEntries =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutDTOCopyWith<WorkoutDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutDTOCopyWith<$Res> {
  factory $WorkoutDTOCopyWith(
          WorkoutDTO value, $Res Function(WorkoutDTO) then) =
      _$WorkoutDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String dateTime,
      List<EvaluationEntryDTO> evaluationEntries});
}

/// @nodoc
class _$WorkoutDTOCopyWithImpl<$Res> implements $WorkoutDTOCopyWith<$Res> {
  _$WorkoutDTOCopyWithImpl(this._value, this._then);

  final WorkoutDTO _value;
  // ignore: unused_field
  final $Res Function(WorkoutDTO) _then;

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
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      evaluationEntries: evaluationEntries == freezed
          ? _value.evaluationEntries
          : evaluationEntries // ignore: cast_nullable_to_non_nullable
              as List<EvaluationEntryDTO>,
    ));
  }
}

/// @nodoc
abstract class _$$_WorkoutDTOCopyWith<$Res>
    implements $WorkoutDTOCopyWith<$Res> {
  factory _$$_WorkoutDTOCopyWith(
          _$_WorkoutDTO value, $Res Function(_$_WorkoutDTO) then) =
      __$$_WorkoutDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String dateTime,
      List<EvaluationEntryDTO> evaluationEntries});
}

/// @nodoc
class __$$_WorkoutDTOCopyWithImpl<$Res> extends _$WorkoutDTOCopyWithImpl<$Res>
    implements _$$_WorkoutDTOCopyWith<$Res> {
  __$$_WorkoutDTOCopyWithImpl(
      _$_WorkoutDTO _value, $Res Function(_$_WorkoutDTO) _then)
      : super(_value, (v) => _then(v as _$_WorkoutDTO));

  @override
  _$_WorkoutDTO get _value => super._value as _$_WorkoutDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? dateTime = freezed,
    Object? evaluationEntries = freezed,
  }) {
    return _then(_$_WorkoutDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String,
      evaluationEntries: evaluationEntries == freezed
          ? _value._evaluationEntries
          : evaluationEntries // ignore: cast_nullable_to_non_nullable
              as List<EvaluationEntryDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkoutDTO extends _WorkoutDTO {
  const _$_WorkoutDTO(
      {required this.id,
      required this.name,
      required this.dateTime,
      required final List<EvaluationEntryDTO> evaluationEntries})
      : _evaluationEntries = evaluationEntries,
        super._();

  factory _$_WorkoutDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WorkoutDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String dateTime;
  final List<EvaluationEntryDTO> _evaluationEntries;
  @override
  List<EvaluationEntryDTO> get evaluationEntries {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evaluationEntries);
  }

  @override
  String toString() {
    return 'WorkoutDTO(id: $id, name: $name, dateTime: $dateTime, evaluationEntries: $evaluationEntries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkoutDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime) &&
            const DeepCollectionEquality()
                .equals(other._evaluationEntries, _evaluationEntries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(dateTime),
      const DeepCollectionEquality().hash(_evaluationEntries));

  @JsonKey(ignore: true)
  @override
  _$$_WorkoutDTOCopyWith<_$_WorkoutDTO> get copyWith =>
      __$$_WorkoutDTOCopyWithImpl<_$_WorkoutDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkoutDTOToJson(this);
  }
}

abstract class _WorkoutDTO extends WorkoutDTO {
  const factory _WorkoutDTO(
          {required final String id,
          required final String name,
          required final String dateTime,
          required final List<EvaluationEntryDTO> evaluationEntries}) =
      _$_WorkoutDTO;
  const _WorkoutDTO._() : super._();

  factory _WorkoutDTO.fromJson(Map<String, dynamic> json) =
      _$_WorkoutDTO.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get dateTime => throw _privateConstructorUsedError;
  @override
  List<EvaluationEntryDTO> get evaluationEntries =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WorkoutDTOCopyWith<_$_WorkoutDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
