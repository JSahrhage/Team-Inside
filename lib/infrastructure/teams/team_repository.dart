import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/domain/team/i_team_repository.dart';
import 'package:team_inside/domain/team/team.dart';
import 'package:team_inside/domain/team/team_failure.dart';
import 'package:team_inside/infrastructure/auth/user_dto.dart';
import 'package:team_inside/infrastructure/core/firestore_helpers.dart';
import 'package:team_inside/infrastructure/teams/team_dto.dart';

@LazySingleton(as: ITeamRepository)
class TeamRepository implements ITeamRepository {
  final FirebaseFirestore _firestore;

  TeamRepository(this._firestore);

  @override
  Future<Either<TeamFailure, Team>> getTeamById(UniqueId id) async {
    try {
      final teamDoc = await _firestore.teamDocument(id);
      final team = await teamDoc.get();
      final teamDTO = TeamDTO.fromFirestore(team);

      return right(teamDTO.toDomain());
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const TeamFailure.insufficientPermission());
      }
      return left(const TeamFailure.unexpected());
    }
  }

  @override
  Future<Either<TeamFailure, KtList<Team>>> getJoinedTeams() async {
    try {
      final userDoc = await _firestore.userDocument();
      final userSnap = await userDoc.get();
      final userDTO = UserDTO.fromFirestore(userSnap);
      final user = userDTO.toDomain();

      final joinedTeamIds = user.joinedTeams;

      final List<Team> joinedTeams = [];
      for (final joinedTeamId in joinedTeamIds.iter) {
        final team = await getTeamById(joinedTeamId);
        team.fold(
          (failure) {
            return left(failure);
          },
          (success) {
            joinedTeams.add(success);
          },
        );
      }
      joinedTeams.sort(
        (a, b) {
          return a.teamname.getOrCrash().compareTo(b.teamname.getOrCrash());
        },
      );
      return right(joinedTeams.toImmutableList());
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const TeamFailure.insufficientPermission());
      }
      return left(const TeamFailure.unexpected());
    }
  }

  @override
  Future<Either<TeamFailure, KtList<Team>>> getTeamRequests() async {
    try {
      final userDoc = await _firestore.userDocument();
      final userSnap = await userDoc.get();
      final userDTO = UserDTO.fromFirestore(userSnap);
      final user = userDTO.toDomain();

      final teamRequestIds = user.teamRequests;

      final List<Team> teamRequests = [];
      for (final teamRequestId in teamRequestIds.iter) {
        final team = await getTeamById(teamRequestId);
        team.fold(
          (failure) {
            return left(failure);
          },
          (success) {
            teamRequests.add(success);
          },
        );
      }
      teamRequests.sort(
        (a, b) {
          return a.teamname.getOrCrash().compareTo(b.teamname.getOrCrash());
        },
      );
      return right(teamRequests.toImmutableList());
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const TeamFailure.insufficientPermission());
      }
      return left(const TeamFailure.unexpected());
    }
  }

  @override
  Future<Either<TeamFailure, Unit>> create(Team team) async {
    try {
      final teamDoc = await _firestore.teamDocument(team.id);
      final teamDTO = TeamDTO.fromDomain(team);

      await teamDoc.set(teamDTO.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const TeamFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const TeamFailure.unableToUpdate());
      }
      return left(const TeamFailure.unexpected());
    }
  }

  @override
  Future<Either<TeamFailure, Unit>> update(Team team) async {
    try {
      final teamDoc = await _firestore.teamDocument(team.id);
      final teamDTO = TeamDTO.fromDomain(team);

      await teamDoc.update(teamDTO.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const TeamFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const TeamFailure.unableToUpdate());
      }
      return left(const TeamFailure.unexpected());
    }
  }

  @override
  Future<Either<TeamFailure, Unit>> delete(Team team) async {
    try {
      final teamDoc = await _firestore.teamDocument(team.id);

      await teamDoc.delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const TeamFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const TeamFailure.unableToUpdate());
      }
      return left(const TeamFailure.unexpected());
    }
  }
}
