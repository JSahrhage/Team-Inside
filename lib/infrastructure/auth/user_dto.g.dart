// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      id: json['id'] as String,
      username: json['username'] as String,
      joinedTeams: (json['joinedTeams'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      teamRequests: (json['teamRequests'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'joinedTeams': instance.joinedTeams,
      'teamRequests': instance.teamRequests,
    };
