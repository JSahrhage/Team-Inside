import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:team_inside/domain/image/i_image_facade.dart';
import 'package:team_inside/domain/image/image_failure.dart';

@LazySingleton(as: IImageFacade)
class FirebaseImageFacade implements IImageFacade {
  final FirebaseStorage _firebaseStorage;

  FirebaseImageFacade(
    this._firebaseStorage,
  );

  @override
  Future<Option<String>> getDownloadURL(String ref) async {
    try {
      return some(
        await _firebaseStorage.ref(ref).getDownloadURL(),
      );
    } catch (e) {
      return none();
    }
  }

  @override
  Future<Either<ImageFailure, Unit>> uploadImage(File file, String ref) async {
    try {
      await _firebaseStorage.ref(ref).putFile(file);
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'canceled') {
        return left(const ImageFailure.cancelledByUser());
      } else if (e.code == 'invalid-url') {
        return left(const ImageFailure.invalidURL());
      } else if (e.code == 'unauthorized') {
        return left(const ImageFailure.unauthorized());
      } else {
        return left(const ImageFailure.serverError());
      }
    }
  }
}
