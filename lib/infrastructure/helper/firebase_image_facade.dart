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
  Future<Option<String>> getDownloadURLForGroupImage(String ref) async {
    try {
      final pathReference = _firebaseStorage.ref().child('GroupImages/$ref');
      final downloadURL = await pathReference.getDownloadURL();
      return some(downloadURL);
    } catch (e) {
      return none();
    }
  }

  @override
  Future<Either<ImageFailure, Unit>> uploadGroupImage(
    File file,
    String ref,
  ) async {
    try {
      await _firebaseStorage.ref().child('GroupImages/$ref').putFile(file);
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

  @override
  Future<Option<String>> getDownloadURLForUserImage(String ref) async {
    try {
      final pathReference = _firebaseStorage.ref().child('UserImages/$ref');
      final downloadURL = await pathReference.getDownloadURL();
      return some(downloadURL);
    } catch (e) {
      return none();
    }
  }

  @override
  Future<Either<ImageFailure, Unit>> uploadUserImage(
    File file,
    String ref,
  ) async {
    try {
      await _firebaseStorage.ref().child('UserImages/$ref').putFile(file);
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
