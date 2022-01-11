import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:team_inside/domain/auth/i_user_repository.dart';
import 'package:team_inside/domain/auth/user.dart';
import 'package:team_inside/domain/auth/user_failure.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/infrastructure/auth/user_dto.dart';
import 'package:team_inside/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final FirebaseFirestore _firestore;

  UserRepository(this._firestore);

  @override
  Future<Either<UserFailure, User>> getUserById(UniqueId uniqueId) async {
    try {
      final userDoc = await _firestore.userDocument();
      final userDTO = UserDTO.fromDomain(user);

      await userDoc.get();

      await userDoc.set(userDTO.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.insufficientPermission());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> create(User user) async {
    try {
      final userDoc = await _firestore.userDocument();
      final userDTO = UserDTO.fromDomain(user);

      await userDoc.set(userDTO.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.insufficientPermission());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> update(User user) async {
    try {
      final userDoc = await _firestore.userDocument();
      final userDTO = UserDTO.fromDomain(user);

      await userDoc.update(userDTO.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const UserFailure.unableToUpdate());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> delete(User user) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.insufficientPermission());
      } else if (e.message!.contains('NOT_FOUND')) {
        return left(const UserFailure.unableToUpdate());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }
}
