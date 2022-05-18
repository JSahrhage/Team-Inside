import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/domain/team/value_objects.dart';
import 'package:team_inside/domain/team/workout.dart';
import 'package:team_inside/infrastructure/teams/evaluation_entry_dto.dart';

part 'workout_dto.freezed.dart';
part 'workout_dto.g.dart';

@freezed
class WorkoutDTO with _$WorkoutDTO {
  const factory WorkoutDTO({
    required String id,
    required String name,
    required String dateTime,
    required List<EvaluationEntryDTO> evaluationEntries,
  }) = _WorkoutDTO;

  const WorkoutDTO._();

  factory WorkoutDTO.fromDomain(Workout workout) {
    return WorkoutDTO(
      id: workout.id.getOrCrash(),
      name: workout.name.getOrCrash(),
      dateTime: workout.dateTime.toString(),
      evaluationEntries: workout.evaluationEntries
          .map(
            (evaluationEntry) => EvaluationEntryDTO.fromDomain(evaluationEntry),
          )
          .asList(),
    );
  }

  Workout toDomain() {
    return Workout(
      id: UniqueId.fromUniqueString(id),
      name: WorkoutName(name),
      dateTime: DateTime.parse(dateTime),
      evaluationEntries: evaluationEntries
          .map(
            (evaluationEntryDTO) => evaluationEntryDTO.toDomain(),
          )
          .toImmutableList(),
    );
  }

  factory WorkoutDTO.fromJson(Map<String, dynamic> json) =>
      _$WorkoutDTOFromJson(json);

  factory WorkoutDTO.fromFirestore(DocumentSnapshot doc) {
    return WorkoutDTO.fromJson(doc.data()! as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
