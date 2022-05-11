part of 'user_rights_bloc.dart';

@freezed
class UserRightsEvent with _$UserRightsEvent {
  const factory UserRightsEvent.navigateBackToTeam() = NavigateBackToTeam;
  const factory UserRightsEvent.setIds(UniqueId teamId, UniqueId teamMemberId) =
      SetIds;
  const factory UserRightsEvent.updateTeamMember() = UpdateTeamMember;
  const factory UserRightsEvent.updateAdminRight(
    // ignore: avoid_positional_boolean_parameters
    bool isAdmin,
  ) = UpdateAdminRight;
  const factory UserRightsEvent.updateWorkoutCreatorRight(
    // ignore: avoid_positional_boolean_parameters
    bool isWorkoutCreator,
  ) = UpdateWorkoutCreatorRight;
  const factory UserRightsEvent.updateAnalystRight(
    // ignore: avoid_positional_boolean_parameters
    bool isAnalyst,
  ) = UpdateAnalystRight;
  const factory UserRightsEvent.updateAthleteRight(
    // ignore: avoid_positional_boolean_parameters
    bool isAthlete,
  ) = UpdateAthleteRight;
  const factory UserRightsEvent.applyChanges() = ApplyChanges;
}
