import 'package:dartz/dartz.dart';
import 'package:team_inside/domain/auth/auth_failure.dart';
import 'package:team_inside/domain/auth/user.dart';
import 'package:team_inside/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Option<User> getSignedInUser();
  Future<void> signOut();
  Future<void> deleteUser();
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPasswordAndUsername({
    required EmailAddress emailAddress,
    required Password password,
    required Username username,
  });
  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail({
    required EmailAddress emailAddress,
  });
}
