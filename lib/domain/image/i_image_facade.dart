import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:team_inside/domain/image/image_failure.dart';

abstract class IImageFacade {
  Future<Option<String>> getDownloadURL(String ref);
  Future<Either<ImageFailure, Unit>> uploadImage(File file, String ref);
}
