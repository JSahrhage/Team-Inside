import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/domain/team/team_member.dart';

part 'team_member_dto.freezed.dart';
part 'team_member_dto.g.dart';

@freezed
class TeamMemberDTO with _$TeamMemberDTO {
  const factory TeamMemberDTO({
    required String id,
    required bool isAdmin,
    required bool isWorkoutCreator,
    required bool isAnalyst,
    required bool isAthlete,
  }) = _TeamMemberDTO;

  const TeamMemberDTO._();

  factory TeamMemberDTO.fromDomain(TeamMember teamMember) {
    return TeamMemberDTO(
      id: teamMember.id.getOrCrash(),
      isAdmin: teamMember.isAdmin,
      isWorkoutCreator: teamMember.isWorkoutCreator,
      isAnalyst: teamMember.isAnalyst,
      isAthlete: teamMember.isAthlete,
    );
  }

  TeamMember toDomain() {
    return TeamMember(
      id: UniqueId.fromUniqueString(id),
      isAdmin: isAdmin,
      isWorkoutCreator: isWorkoutCreator,
      isAnalyst: isAnalyst,
      isAthlete: isAthlete,
    );
  }

  factory TeamMemberDTO.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberDTOFromJson(json);

  factory TeamMemberDTO.fromFirestore(DocumentSnapshot doc) {
    return TeamMemberDTO.fromJson(doc.data()! as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
