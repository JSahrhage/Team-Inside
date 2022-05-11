import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/domain/team/team.dart';
import 'package:team_inside/domain/team/value_objects.dart';
import 'package:team_inside/infrastructure/teams/workout_dto.dart';

part 'team_dto.freezed.dart';
part 'team_dto.g.dart';

@freezed
class TeamDTO with _$TeamDTO {
  const factory TeamDTO({
    required String id,
    required String teamname,
    required List<String> joinedUsers,
    required List<String> admins,
    required List<String> workoutCreator,
    required List<String> analysts,
    required List<String> athletes,
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
      admins: team.admins
          .map(
            (uniqueId) => uniqueId.getOrCrash(),
          )
          .asList(),
      workoutCreator: team.workoutCreator
          .map(
            (uniqueId) => uniqueId.getOrCrash(),
          )
          .asList(),
      analysts: team.analysts
          .map(
            (uniqueId) => uniqueId.getOrCrash(),
          )
          .asList(),
      athletes: team.athletes
          .map(
            (uniqueId) => uniqueId.getOrCrash(),
          )
          .asList(),
      workouts: team.workouts
          .map((workout) => WorkoutDTO.fromDomain(workout))
          .asList(),
    );
  }

  Team toDomain() {
    return Team(
      id: UniqueId.fromUniqueString(id),
      teamname: Teamname(teamname),
      joinedUsers: joinedUsers
          .map((uniqueId) => UniqueId.fromUniqueString(uniqueId))
          .toImmutableList(),
      admins: admins
          .map((uniqueId) => UniqueId.fromUniqueString(uniqueId))
          .toImmutableList(),
      workoutCreator: workoutCreator
          .map((uniqueId) => UniqueId.fromUniqueString(uniqueId))
          .toImmutableList(),
      analysts: analysts
          .map((uniqueId) => UniqueId.fromUniqueString(uniqueId))
          .toImmutableList(),
      athletes: athletes
          .map((uniqueId) => UniqueId.fromUniqueString(uniqueId))
          .toImmutableList(),
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
