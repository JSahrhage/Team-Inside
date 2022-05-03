import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:team_inside/domain/image/image_failure.dart';

abstract class IImageFacade {
  Future<Option<String>> getDownloadURLForGroupImage(String ref);
  Future<Either<ImageFailure, Unit>> uploadGroupImage(File file, String ref);
  Future<Option<String>> getDownloadURLForUserImage(String ref);
  Future<Either<ImageFailure, Unit>> uploadUserImage(File file, String ref);
}
