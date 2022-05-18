part of 'workout_bloc.dart';

@freezed
class WorkoutState with _$WorkoutState {
  const factory WorkoutState({
    required UniqueId teamId,
    required UniqueId workoutId,
    required bool shouldNavigateBackToFramework,
  }) = _WorkoutState;

  factory WorkoutState.initial() => WorkoutState(
        teamId: UniqueId(),
        workoutId: UniqueId(),
        shouldNavigateBackToFramework: false,
      );
}
