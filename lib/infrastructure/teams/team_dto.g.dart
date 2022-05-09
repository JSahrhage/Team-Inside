// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TeamDTO _$$_TeamDTOFromJson(Map<String, dynamic> json) => _$_TeamDTO(
      id: json['id'] as String,
      teamname: json['teamname'] as String,
      joinedUsers: (json['joinedUsers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      workouts: (json['workouts'] as List<dynamic>)
          .map((e) => WorkoutDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TeamDTOToJson(_$_TeamDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'teamname': instance.teamname,
      'joinedUsers': instance.joinedUsers,
      'workouts': instance.workouts,
    };
