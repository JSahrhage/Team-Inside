import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:team_inside/domain/core/failures.dart';
import 'package:team_inside/domain/core/value_objects.dart';
import 'package:team_inside/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String input) {
    return Username._(
      validateUsername(input),
    );
  }

  const Username._(this.value);
}

class JoinedTeams<UniqueId> extends ValueObject<KtList<UniqueId>> {
  @override
  final Either<ValueFailure<KtList<UniqueId>>, KtList<UniqueId>> value;

  factory JoinedTeams(KtList<UniqueId> input) {
    return JoinedTeams._(right(input));
  }

  const JoinedTeams._(this.value);
}

class TeamRequests<UniqueId> extends ValueObject<KtList<UniqueId>> {
  @override
  final Either<ValueFailure<KtList<UniqueId>>, KtList<UniqueId>> value;

  factory TeamRequests(KtList<UniqueId> input) {
    return TeamRequests._(right(input));
  }

  const TeamRequests._(this.value);
}
