import 'package:dartz/dartz.dart';
import 'package:team_inside/domain/auth/user.dart';
import 'package:team_inside/domain/auth/user_failure.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, User>> getCurrentUser();
  Future<Either<UserFailure, Unit>> update(User user);
  Future<Either<UserFailure, Unit>> delete(User user);
}
