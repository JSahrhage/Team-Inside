part of 'create_workout_bloc.dart';

@freezed
class CreateWorkoutState with _$CreateWorkoutState {
  const factory CreateWorkoutState({
    required UniqueId teamId,
    required bool shouldNavigateBackToFramework,
  }) = _CreateWorkoutState;

  factory CreateWorkoutState.initial() => CreateWorkoutState(
        teamId: UniqueId(),
        shouldNavigateBackToFramework: false,
      );
}
