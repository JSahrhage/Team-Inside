// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'team_member_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeamMemberDTO _$TeamMemberDTOFromJson(Map<String, dynamic> json) {
  return _TeamMemberDTO.fromJson(json);
}

/// @nodoc
mixin _$TeamMemberDTO {
  String get id => throw _privateConstructorUsedError;
  bool get isAdmin => throw _privateConstructorUsedError;
  bool get isWorkoutCreator => throw _privateConstructorUsedError;
  bool get isAnalyst => throw _privateConstructorUsedError;
  bool get isAthlete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamMemberDTOCopyWith<TeamMemberDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamMemberDTOCopyWith<$Res> {
  factory $TeamMemberDTOCopyWith(
          TeamMemberDTO value, $Res Function(TeamMemberDTO) then) =
      _$TeamMemberDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      bool isAdmin,
      bool isWorkoutCreator,
      bool isAnalyst,
      bool isAthlete});
}

/// @nodoc
class _$TeamMemberDTOCopyWithImpl<$Res>
    implements $TeamMemberDTOCopyWith<$Res> {
  _$TeamMemberDTOCopyWithImpl(this._value, this._then);

  final TeamMemberDTO _value;
  // ignore: unused_field
  final $Res Function(TeamMemberDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isAdmin = freezed,
    Object? isWorkoutCreator = freezed,
    Object? isAnalyst = freezed,
    Object? isAthlete = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      isWorkoutCreator: isWorkoutCreator == freezed
          ? _value.isWorkoutCreator
          : isWorkoutCreator // ignore: cast_nullable_to_non_nullable
              as bool,
      isAnalyst: isAnalyst == freezed
          ? _value.isAnalyst
          : isAnalyst // ignore: cast_nullable_to_non_nullable
              as bool,
      isAthlete: isAthlete == freezed
          ? _value.isAthlete
          : isAthlete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_TeamMemberDTOCopyWith<$Res>
    implements $TeamMemberDTOCopyWith<$Res> {
  factory _$$_TeamMemberDTOCopyWith(
          _$_TeamMemberDTO value, $Res Function(_$_TeamMemberDTO) then) =
      __$$_TeamMemberDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      bool isAdmin,
      bool isWorkoutCreator,
      bool isAnalyst,
      bool isAthlete});
}

/// @nodoc
class __$$_TeamMemberDTOCopyWithImpl<$Res>
    extends _$TeamMemberDTOCopyWithImpl<$Res>
    implements _$$_TeamMemberDTOCopyWith<$Res> {
  __$$_TeamMemberDTOCopyWithImpl(
      _$_TeamMemberDTO _value, $Res Function(_$_TeamMemberDTO) _then)
      : super(_value, (v) => _then(v as _$_TeamMemberDTO));

  @override
  _$_TeamMemberDTO get _value => super._value as _$_TeamMemberDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? isAdmin = freezed,
    Object? isWorkoutCreator = freezed,
    Object? isAnalyst = freezed,
    Object? isAthlete = freezed,
  }) {
    return _then(_$_TeamMemberDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      isWorkoutCreator: isWorkoutCreator == freezed
          ? _value.isWorkoutCreator
          : isWorkoutCreator // ignore: cast_nullable_to_non_nullable
              as bool,
      isAnalyst: isAnalyst == freezed
          ? _value.isAnalyst
          : isAnalyst // ignore: cast_nullable_to_non_nullable
              as bool,
      isAthlete: isAthlete == freezed
          ? _value.isAthlete
          : isAthlete // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeamMemberDTO extends _TeamMemberDTO {
  const _$_TeamMemberDTO(
      {required this.id,
      required this.isAdmin,
      required this.isWorkoutCreator,
      required this.isAnalyst,
      required this.isAthlete})
      : super._();

  factory _$_TeamMemberDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TeamMemberDTOFromJson(json);

  @override
  final String id;
  @override
  final bool isAdmin;
  @override
  final bool isWorkoutCreator;
  @override
  final bool isAnalyst;
  @override
  final bool isAthlete;

  @override
  String toString() {
    return 'TeamMemberDTO(id: $id, isAdmin: $isAdmin, isWorkoutCreator: $isWorkoutCreator, isAnalyst: $isAnalyst, isAthlete: $isAthlete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TeamMemberDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.isAdmin, isAdmin) &&
            const DeepCollectionEquality()
                .equals(other.isWorkoutCreator, isWorkoutCreator) &&
            const DeepCollectionEquality().equals(other.isAnalyst, isAnalyst) &&
            const DeepCollectionEquality().equals(other.isAthlete, isAthlete));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(isAdmin),
      const DeepCollectionEquality().hash(isWorkoutCreator),
      const DeepCollectionEquality().hash(isAnalyst),
      const DeepCollectionEquality().hash(isAthlete));

  @JsonKey(ignore: true)
  @override
  _$$_TeamMemberDTOCopyWith<_$_TeamMemberDTO> get copyWith =>
      __$$_TeamMemberDTOCopyWithImpl<_$_TeamMemberDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamMemberDTOToJson(this);
  }
}

abstract class _TeamMemberDTO extends TeamMemberDTO {
  const factory _TeamMemberDTO(
      {required final String id,
      required final bool isAdmin,
      required final bool isWorkoutCreator,
      required final bool isAnalyst,
      required final bool isAthlete}) = _$_TeamMemberDTO;
  const _TeamMemberDTO._() : super._();

  factory _TeamMemberDTO.fromJson(Map<String, dynamic> json) =
      _$_TeamMemberDTO.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  bool get isAdmin => throw _privateConstructorUsedError;
  @override
  bool get isWorkoutCreator => throw _privateConstructorUsedError;
  @override
  bool get isAnalyst => throw _privateConstructorUsedError;
  @override
  bool get isAthlete => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TeamMemberDTOCopyWith<_$_TeamMemberDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
