import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_failure.freezed.dart';

@freezed
class ImageFailure with _$ImageFailure {
  const factory ImageFailure.cancelledByUser() = CancelledByUser;
  const factory ImageFailure.invalidURL() = InvalidURL;
  const factory ImageFailure.unauthorized() = Unauthorized;
  const factory ImageFailure.serverError() = ServerError;
}
