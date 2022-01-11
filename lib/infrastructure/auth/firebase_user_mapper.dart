import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:kt_dart/collection.dart';
import 'package:team_inside/domain/auth/user.dart';
import 'package:team_inside/domain/auth/value_objects.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      username: Username(''),
      joinedTeams: JoinedTeams(emptyList()),
      teamRequests: TeamRequests(emptyList()),
    );
  }
}
