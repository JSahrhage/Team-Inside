import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/domain/team/team.dart';
import 'package:team_inside/domain/team/team_failure.dart';

abstract class ITeamRepository {
  Future<Either<TeamFailure, Team>> getTeamById(UniqueId id);
  Future<Either<TeamFailure, KtList<Team>>> getJoinedTeams();
  Future<Either<TeamFailure, KtList<Team>>> getTeamRequests();
  Future<Either<TeamFailure, Unit>> create(Team team);
  Future<Either<TeamFailure, Unit>> update(Team team);
  Future<Either<TeamFailure, Unit>> delete(Team team);
}
