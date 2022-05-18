// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkoutDTO _$$_WorkoutDTOFromJson(Map<String, dynamic> json) =>
    _$_WorkoutDTO(
      id: json['id'] as String,
      name: json['name'] as String,
      dateTime: json['dateTime'] as String,
      evaluationEntries: (json['evaluationEntries'] as List<dynamic>)
          .map((e) => EvaluationEntryDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WorkoutDTOToJson(_$_WorkoutDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dateTime': instance.dateTime,
      'evaluationEntries': instance.evaluationEntries,
    };
