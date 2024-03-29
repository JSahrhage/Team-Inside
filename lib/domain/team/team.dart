import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:team_inside/domain/core/failures.dart';
import 'package:team_inside/domain/core/i_entity.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/domain/team/team_member.dart';
import 'package:team_inside/domain/team/value_objects.dart';
import 'package:team_inside/domain/team/workout.dart';

part 'team.freezed.dart';

@freezed
class Team with _$Team implements IEntity {
  const factory Team({
    required UniqueId id,
    required TeamName teamname,
    required KtList<UniqueId> joinedUsers,
    required KtList<TeamMember> teamMembers,
    required KtList<Workout> workouts,
  }) = _Team;

  const Team._();

  factory Team.empty() => Team(
        id: UniqueId(),
        teamname: TeamName(''),
        joinedUsers: emptyList(),
        teamMembers: emptyList(),
        workouts: emptyList(),
      );
}

extension TeamX on Team {
  Option<ValueFailure<dynamic>> get failureOption {
    return teamname.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
