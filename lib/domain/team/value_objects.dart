import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:team_inside/domain/core/failures.dart';
import 'package:team_inside/domain/core/value_objects.dart';
import 'package:team_inside/domain/core/value_validators.dart';

class Teamname extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Teamname(String input) {
    return Teamname._(
      validateTeamname(input),
    );
  }

  const Teamname._(this.value);
}

class JoinedUsers<UniqueId> extends ValueObject<KtList<UniqueId>> {
  @override
  final Either<ValueFailure<KtList<UniqueId>>, KtList<UniqueId>> value;

  factory JoinedUsers(KtList<UniqueId> input) {
    return JoinedUsers._(right(input));
  }

  const JoinedUsers._(this.value);
}
