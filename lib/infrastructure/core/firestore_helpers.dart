import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:team_inside/domain/auth/i_auth_facade.dart';
import 'package:team_inside/domain/core/errors.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }

  Future<DocumentReference> teamDocument(UniqueId teamId) async {
    return FirebaseFirestore.instance
        .collection('teams')
        .doc(teamId.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  //
}
