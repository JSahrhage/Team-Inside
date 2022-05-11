import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:team_inside/domain/auth/auth_failure.dart';
import 'package:team_inside/domain/auth/i_auth_facade.dart';
import 'package:team_inside/domain/auth/user.dart';
import 'package:team_inside/domain/auth/value_objects.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/infrastructure/auth/firebase_user_mapper.dart';
import 'package:team_inside/infrastructure/auth/user_dto.dart';
import 'package:team_inside/infrastructure/core/firestore_helpers.dart';
import 'package:team_inside/infrastructure/teams/team_dto.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._firestore,
  );

  @override
  Option<User> getSignedInUser() =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<void> signOut() => _firebaseAuth.signOut();

  @override
  Future<void> deleteUser() async {
    final userDoc = await _firestore.currentUserDocument();
    final user = await userDoc.get();
    final userDTO = UserDTO.fromFirestore(user);

    final joinedTeamIds = userDTO.joinedTeams;
    for (final joinedTeamId in joinedTeamIds) {
      try {
        final teamDoc = await _firestore
            .teamDocument(UniqueId.fromUniqueString(joinedTeamId));
        final team = await teamDoc.get();
        final teamDTO = TeamDTO.fromFirestore(team).toDomain();

        final mutableJoinedUsers = teamDTO.joinedUsers.toMutableList().asList();
        mutableJoinedUsers.remove(UniqueId.fromUniqueString(userDTO.id));

        final mutatedTeamDTO = teamDTO.copyWith(
          joinedUsers: mutableJoinedUsers.toImmutableList(),
        );

        await teamDoc.update(TeamDTO.fromDomain(mutatedTeamDTO).toJson());
        // ignore: empty_catches, unused_catch_clause
      } on FirebaseException catch (e) {}

      final userDoc = await _firestore.currentUserDocument();
      userDoc.delete();

      _firebaseAuth.currentUser?.delete();
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPasswordAndUsername({
    required EmailAddress emailAddress,
    required Password password,
    required Username username,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      final credentials = await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      final userDoc = await _firestore.currentUserDocument();
      final User user = User(
        id: UniqueId.fromUniqueString(credentials.user!.uid),
        username: username,
        joinedTeams: emptyList(),
        teamRequests: emptyList(),
      );
      final userDTO = UserDTO.fromDomain(user);

      await userDoc.set(userDTO.toJson());

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail({
    required EmailAddress emailAddress,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    try {
      await _firebaseAuth.sendPasswordResetEmail(
        email: emailAddressStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return left(const AuthFailure.userNotFound());
      }
      return left(const AuthFailure.serverError());
    }
  }
}
