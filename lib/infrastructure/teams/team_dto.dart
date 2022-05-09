import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/domain/teams/team.dart';
import 'package:team_inside/domain/teams/value_objects.dart';

part 'team_dto.freezed.dart';
part 'team_dto.g.dart';

@freezed
class TeamDTO with _$TeamDTO {
  const factory TeamDTO({
    required String id,
    required String teamname,
    required List<String> joinedUsers,
  }) = _TeamDTO;

  const TeamDTO._();

  factory TeamDTO.fromDomain(Team team) {
    return TeamDTO(
      id: team.id.getOrCrash(),
      teamname: team.teamname.getOrCrash(),
      joinedUsers: team.joinedUsers
          .getOrCrash()
          .map(
            (uniqueId) => uniqueId.getOrCrash(),
          )
          .asList(),
    );
  }

  Team toDomain() {
    return Team(
      id: UniqueId.fromUniqueString(id),
      teamname: Teamname(teamname),
      joinedUsers: JoinedUsers(
        joinedUsers
            .map((uniqueId) => UniqueId.fromUniqueString(uniqueId))
            .toImmutableList(),
      ),
    );
  }

  factory TeamDTO.fromJson(Map<String, dynamic> json) =>
      _$TeamDTOFromJson(json);

  factory TeamDTO.fromFirestore(DocumentSnapshot doc) {
    return TeamDTO.fromJson(doc.data()! as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
