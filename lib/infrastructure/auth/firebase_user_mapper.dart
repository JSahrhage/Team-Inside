import 'package:firebase_auth/firebase_auth.dart';
import 'package:team_inside/domain/auth/app_user.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';

extension FirebaseUserDomainX on User {
  AppUser toDomain() {
    return AppUser(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
