import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:team_inside/domain/auth/user.dart';
import 'package:team_inside/domain/auth/value_objects.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const factory UserDTO({
    required String id,
    required String username,
    required List<String> joinedTeams,
    required List<String> teamRequests,
  }) = _UserDTO;

  const UserDTO._();

  factory UserDTO.fromDomain(User user) {
    return UserDTO(
      id: user.id.getOrCrash(),
      username: user.username.getOrCrash(),
      joinedTeams: user.joinedTeams
          .getOrCrash()
          .map(
            (uniqueId) => uniqueId.getOrCrash(),
          )
          .asList(),
      teamRequests: user.teamRequests
          .getOrCrash()
          .map(
            (uniqueId) => uniqueId.getOrCrash(),
          )
          .asList(),
    );
  }

  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(id),
      username: Username(username),
      joinedTeams: JoinedTeams(
        joinedTeams
            .map((uniqueId) => UniqueId.fromUniqueString(uniqueId))
            .toImmutableList(),
      ),
      teamRequests: TeamRequests(
        teamRequests
            .map((uniqueId) => UniqueId.fromUniqueString(uniqueId))
            .toImmutableList(),
      ),
    );
  }

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  factory UserDTO.fromFirestore(DocumentSnapshot doc) {
    return UserDTO.fromJson(doc.data()! as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
