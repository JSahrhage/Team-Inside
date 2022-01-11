import 'package:dartz/dartz.dart';
import 'package:team_inside/domain/auth/user.dart';
import 'package:team_inside/domain/auth/user_failure.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, User>> getUserById(UniqueId id);
  Future<Either<UserFailure, Unit>> create(User user);
  Future<Either<UserFailure, Unit>> update(User user);
  Future<Either<UserFailure, Unit>> delete(User user);
}
