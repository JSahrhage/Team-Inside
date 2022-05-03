import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:team_inside/domain/auth/value_objects.dart';
import 'package:team_inside/domain/core/failures.dart';
import 'package:team_inside/domain/core/i_entitiy.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';

part 'user.freezed.dart';

@freezed
class User with _$User implements IEntity {
  const factory User({
    required UniqueId id,
    required Username username,
    required JoinedTeams<UniqueId> joinedTeams,
    required TeamRequests<UniqueId> teamRequests,
  }) = _User;

  const User._();

  factory User.empty() => User(
        id: UniqueId(),
        username: Username(''),
        joinedTeams: JoinedTeams(emptyList()),
        teamRequests: TeamRequests(emptyList()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return username.failureOrUnit
        .fold((failure) => some(failure), (_) => none());
  }
}
