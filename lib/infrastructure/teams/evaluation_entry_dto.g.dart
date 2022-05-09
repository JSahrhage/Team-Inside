// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evaluation_entry_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EvaluationEntryDTO _$$_EvaluationEntryDTOFromJson(
        Map<String, dynamic> json) =>
    _$_EvaluationEntryDTO(
      id: json['id'] as String,
      workoutId: json['workoutId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$_EvaluationEntryDTOToJson(
        _$_EvaluationEntryDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'workoutId': instance.workoutId,
      'userId': instance.userId,
    };
