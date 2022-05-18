import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:team_inside/domain/core/failures.dart';
import 'package:team_inside/domain/core/i_entity.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/domain/team/evaluation_entry.dart';
import 'package:team_inside/domain/team/value_objects.dart';

part 'workout.freezed.dart';

@freezed
class Workout with _$Workout implements IEntity {
  const factory Workout({
    required UniqueId id,
    required WorkoutName name,
    required DateTime dateTime,
    required KtList<EvaluationEntry> evaluationEntries,
  }) = _Workout;

  const Workout._();

  factory Workout.empty() => Workout(
        id: UniqueId(),
        name: WorkoutName(''),
        dateTime: DateTime.now(),
        evaluationEntries: emptyList(),
      );
}

extension WorkoutX on Workout {
  Option<ValueFailure<dynamic>> get failureOption {
    return none();
  }
}
