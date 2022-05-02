import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/domain/teams/value_objects.dart';

part 'team.freezed.dart';

@freezed
class Team with _$Team {
  const factory Team({
    required UniqueId id,
    required Teamname teamname,
    required JoinedUsers joinedUsers,
  }) = _Team;

  const Team._();

  factory Team.empty() => Team(
        id: UniqueId(),
        teamname: Teamname(''),
        joinedUsers: JoinedUsers(emptyList()),
      );
}
