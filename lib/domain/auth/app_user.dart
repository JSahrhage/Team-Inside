import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';

part 'app_user.freezed.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required UniqueId id,
  }) = _AppUser;
}
