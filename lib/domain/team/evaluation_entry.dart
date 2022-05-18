import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:team_inside/domain/core/failures.dart';
import 'package:team_inside/domain/core/i_entity.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';

part 'evaluation_entry.freezed.dart';

@freezed
class EvaluationEntry with _$EvaluationEntry implements IEntity {
  const factory EvaluationEntry({
    required UniqueId id,
    required UniqueId workoutId,
    required UniqueId userId,
  }) = _EvaluationEntry;

  const EvaluationEntry._();

  factory EvaluationEntry.empty() => EvaluationEntry(
        id: UniqueId(),
        workoutId: UniqueId(),
        userId: UniqueId(),
      );
}

extension EvaluationEntryX on EvaluationEntry {
  Option<ValueFailure<dynamic>> get failureOption {
    return workoutId.failureOrUnit
        .andThen(
          userId.failureOrUnit,
        )
        .fold(
          (f) => some(f),
          (_) => none(),
        );
  }
}
