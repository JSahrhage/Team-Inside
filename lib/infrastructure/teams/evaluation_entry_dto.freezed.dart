// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'evaluation_entry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EvaluationEntryDTO _$EvaluationEntryDTOFromJson(Map<String, dynamic> json) {
  return _EvaluationEntryDTO.fromJson(json);
}

/// @nodoc
mixin _$EvaluationEntryDTO {
  String get id => throw _privateConstructorUsedError;
  String get workoutId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvaluationEntryDTOCopyWith<EvaluationEntryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvaluationEntryDTOCopyWith<$Res> {
  factory $EvaluationEntryDTOCopyWith(
          EvaluationEntryDTO value, $Res Function(EvaluationEntryDTO) then) =
      _$EvaluationEntryDTOCopyWithImpl<$Res>;
  $Res call({String id, String workoutId, String userId});
}

/// @nodoc
class _$EvaluationEntryDTOCopyWithImpl<$Res>
    implements $EvaluationEntryDTOCopyWith<$Res> {
  _$EvaluationEntryDTOCopyWithImpl(this._value, this._then);

  final EvaluationEntryDTO _value;
  // ignore: unused_field
  final $Res Function(EvaluationEntryDTO) _then;

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
              as String,
      workoutId: workoutId == freezed
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EvaluationEntryDTOCopyWith<$Res>
    implements $EvaluationEntryDTOCopyWith<$Res> {
  factory _$$_EvaluationEntryDTOCopyWith(_$_EvaluationEntryDTO value,
          $Res Function(_$_EvaluationEntryDTO) then) =
      __$$_EvaluationEntryDTOCopyWithImpl<$Res>;
  @override
  $Res call({String id, String workoutId, String userId});
}

/// @nodoc
class __$$_EvaluationEntryDTOCopyWithImpl<$Res>
    extends _$EvaluationEntryDTOCopyWithImpl<$Res>
    implements _$$_EvaluationEntryDTOCopyWith<$Res> {
  __$$_EvaluationEntryDTOCopyWithImpl(
      _$_EvaluationEntryDTO _value, $Res Function(_$_EvaluationEntryDTO) _then)
      : super(_value, (v) => _then(v as _$_EvaluationEntryDTO));

  @override
  _$_EvaluationEntryDTO get _value => super._value as _$_EvaluationEntryDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? workoutId = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_EvaluationEntryDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      workoutId: workoutId == freezed
          ? _value.workoutId
          : workoutId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EvaluationEntryDTO extends _EvaluationEntryDTO {
  const _$_EvaluationEntryDTO(
      {required this.id, required this.workoutId, required this.userId})
      : super._();

  factory _$_EvaluationEntryDTO.fromJson(Map<String, dynamic> json) =>
      _$$_EvaluationEntryDTOFromJson(json);

  @override
  final String id;
  @override
  final String workoutId;
  @override
  final String userId;

  @override
  String toString() {
    return 'EvaluationEntryDTO(id: $id, workoutId: $workoutId, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EvaluationEntryDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.workoutId, workoutId) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(workoutId),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$_EvaluationEntryDTOCopyWith<_$_EvaluationEntryDTO> get copyWith =>
      __$$_EvaluationEntryDTOCopyWithImpl<_$_EvaluationEntryDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EvaluationEntryDTOToJson(this);
  }
}

abstract class _EvaluationEntryDTO extends EvaluationEntryDTO {
  const factory _EvaluationEntryDTO(
      {required final String id,
      required final String workoutId,
      required final String userId}) = _$_EvaluationEntryDTO;
  const _EvaluationEntryDTO._() : super._();

  factory _EvaluationEntryDTO.fromJson(Map<String, dynamic> json) =
      _$_EvaluationEntryDTO.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get workoutId => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EvaluationEntryDTOCopyWith<_$_EvaluationEntryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
