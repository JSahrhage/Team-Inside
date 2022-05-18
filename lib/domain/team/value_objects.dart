import 'package:dartz/dartz.dart';
import 'package:team_inside/domain/core/failures.dart';
import 'package:team_inside/domain/core/value_objects.dart';
import 'package:team_inside/domain/core/value_validators.dart';

class TeamName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory TeamName(String input) {
    return TeamName._(
      validateTeamName(input),
    );
  }

  const TeamName._(this.value);
}

class WorkoutName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory WorkoutName(String input) {
    return WorkoutName._(
      validateWorkoutName(input),
    );
  }

  const WorkoutName._(this.value);
}
