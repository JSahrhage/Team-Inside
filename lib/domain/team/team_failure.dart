import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_failure.freezed.dart';

@freezed
class TeamFailure with _$TeamFailure {
  const factory TeamFailure.unexpected() = _Unexpected;
  const factory TeamFailure.insufficientPermission() = _InsufficientPermission;
  const factory TeamFailure.unableToUpdate() = _UnableToUpdate;
}
