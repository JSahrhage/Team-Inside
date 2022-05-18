part of 'create_workout_bloc.dart';

@freezed
class CreateWorkoutEvent with _$CreateWorkoutEvent {
  const factory CreateWorkoutEvent.navigateBackToTeam() = NavigateBackToTeam;
  const factory CreateWorkoutEvent.setTeamId(UniqueId teamId) = SetTeamId;
}
