// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_member_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TeamMemberDTO _$$_TeamMemberDTOFromJson(Map<String, dynamic> json) =>
    _$_TeamMemberDTO(
      id: json['id'] as String,
      isAdmin: json['isAdmin'] as bool,
      isWorkoutCreator: json['isWorkoutCreator'] as bool,
      isAnalyst: json['isAnalyst'] as bool,
      isAthlete: json['isAthlete'] as bool,
    );

Map<String, dynamic> _$$_TeamMemberDTOToJson(_$_TeamMemberDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isAdmin': instance.isAdmin,
      'isWorkoutCreator': instance.isWorkoutCreator,
      'isAnalyst': instance.isAnalyst,
      'isAthlete': instance.isAthlete,
    };
