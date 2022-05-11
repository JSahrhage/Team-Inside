part of 'team_bloc.dart';

@freezed
class TeamEvent with _$TeamEvent {
  const factory TeamEvent.setTeamId(UniqueId teamId) = SetTeamId;
  const factory TeamEvent.navigateBackToFramework() = NavigateBackToFramework;
  const factory TeamEvent.refreshWorkouts() = RefreshWorkouts;
  const factory TeamEvent.refreshUsers() = RefreshUsers;
  const factory TeamEvent.navigateToUserRights(
    UniqueId teamMemberId,
  ) = NavigateToUserRights;
}
