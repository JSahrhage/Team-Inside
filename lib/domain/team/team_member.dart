import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:team_inside/domain/core/failures.dart';
import 'package:team_inside/domain/core/i_entity.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';

part 'team_member.freezed.dart';

@freezed
class TeamMember with _$TeamMember implements IEntity {
  const factory TeamMember({
    required UniqueId id,
    required bool isAdmin,
    required bool isWorkoutCreator,
    required bool isAnalyst,
    required bool isAthlete,
  }) = _TeamMember;

  const TeamMember._();

  factory TeamMember.empty() => TeamMember(
        id: UniqueId(),
        isAdmin: false,
        isWorkoutCreator: false,
        isAnalyst: false,
        isAthlete: false,
      );
}

extension TeamMemberX on TeamMember {
  Option<ValueFailure<dynamic>> get failureOption {
    return none();
  }
}
