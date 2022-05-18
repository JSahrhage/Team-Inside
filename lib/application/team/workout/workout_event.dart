part of 'workout_bloc.dart';

@freezed
class WorkoutEvent with _$WorkoutEvent {
  const factory WorkoutEvent.navigateBackToTeam() = NavigateBackToTeam;
  const factory WorkoutEvent.setTeamId(UniqueId teamId) = SetTeamId;
}
