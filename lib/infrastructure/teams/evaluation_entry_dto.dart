import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/domain/team/evaluation_entry.dart';

part 'evaluation_entry_dto.freezed.dart';
part 'evaluation_entry_dto.g.dart';

@freezed
class EvaluationEntryDTO with _$EvaluationEntryDTO {
  const factory EvaluationEntryDTO({
    required String id,
    required String workoutId,
    required String userId,
  }) = _EvaluationEntryDTO;

  const EvaluationEntryDTO._();

  factory EvaluationEntryDTO.fromDomain(EvaluationEntry evaluationEntry) {
    return EvaluationEntryDTO(
      id: evaluationEntry.id.getOrCrash(),
      workoutId: evaluationEntry.workoutId.getOrCrash(),
      userId: evaluationEntry.userId.getOrCrash(),
    );
  }

  EvaluationEntry toDomain() {
    return EvaluationEntry(
      id: UniqueId.fromUniqueString(id),
      workoutId: UniqueId.fromUniqueString(workoutId),
      userId: UniqueId.fromUniqueString(userId),
    );
  }

  factory EvaluationEntryDTO.fromJson(Map<String, dynamic> json) =>
      _$EvaluationEntryDTOFromJson(json);

  factory EvaluationEntryDTO.fromFirestore(DocumentSnapshot doc) {
    return EvaluationEntryDTO.fromJson(doc.data()! as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
