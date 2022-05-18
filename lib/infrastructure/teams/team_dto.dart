import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/domain/team/team.dart';
import 'package:team_inside/domain/team/team_member.dart';
import 'package:team_inside/domain/team/value_objects.dart';
import 'package:team_inside/infrastructure/teams/team_member_dto.dart';
import 'package:team_inside/infrastructure/teams/workout_dto.dart';

part 'team_dto.freezed.dart';
part 'team_dto.g.dart';

@freezed
class TeamDTO with _$TeamDTO {
  const factory TeamDTO({
    required String id,
    required String teamname,
    required List<String> joinedUsers,
    @TeamMembersConverter() required Map<int, TeamMemberDTO> teamMembers,
    required List<WorkoutDTO> workouts,
  }) = _TeamDTO;

  const TeamDTO._();

  factory TeamDTO.fromDomain(Team team) {
    return TeamDTO(
      id: team.id.getOrCrash(),
      teamname: team.teamname.getOrCrash(),
      joinedUsers: team.joinedUsers
          .map(
            (uniqueId) => uniqueId.getOrCrash(),
          )
          .asList(),
      teamMembers: team.teamMembers
          .map((teamMember) => TeamMemberDTO.fromDomain(teamMember))
          .asList()
          .asMap(),
      workouts: team.workouts
          .map((workout) => WorkoutDTO.fromDomain(workout))
          .asList(),
    );
  }

  Team toDomain() {
    // ignore: prefer_final_locals
    List<TeamMember> teamMembersList = [];
    for (final mapEntry in teamMembers.entries) {
      teamMembersList.add(mapEntry.value.toDomain());
    }
    return Team(
      id: UniqueId.fromUniqueString(id),
      teamname: TeamName(teamname),
      joinedUsers: joinedUsers
          .map((uniqueId) => UniqueId.fromUniqueString(uniqueId))
          .toImmutableList(),
      teamMembers: teamMembersList.toImmutableList(),
      workouts:
          workouts.map((workoutDTO) => workoutDTO.toDomain()).toImmutableList(),
    );
  }

  factory TeamDTO.fromJson(Map<String, dynamic> json) =>
      _$TeamDTOFromJson(json);

  factory TeamDTO.fromFirestore(DocumentSnapshot doc) {
    return TeamDTO.fromJson(doc.data()! as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}

class TeamMembersConverter
    implements JsonConverter<Map<int, TeamMemberDTO>, Map<String, dynamic>> {
  const TeamMembersConverter();

  @override
  Map<int, TeamMemberDTO> fromJson(Map<String, dynamic> jsonEntry) {
    return jsonEntry.map(
      (key, value) => MapEntry(
        int.parse(key),
        TeamMemberDTO.fromJson(value as Map<String, dynamic>),
      ),
    );
  }

  @override
  Map<String, dynamic> toJson(Map<int, TeamMemberDTO> teamMembers) {
    return teamMembers.map(
      (k, e) => MapEntry(
        k.toString(),
        e.toJson(),
      ),
    );
  }
}
