part of 'user_rights_bloc.dart';

@freezed
class UserRightsState with _$UserRightsState {
  const factory UserRightsState({
    required UniqueId teamId,
    required UniqueId teamMemberId,
    required bool shouldNavigateBackToFramework,
    required bool teamMemberRefreshing,
    required Either<TeamFailure, Unit> teamMemberFetchFailureOrSuccess,
    required Option<TeamMember> teamMember,
    required bool isAdmin,
    required bool isWorkoutCreator,
    required bool isAnalyst,
    required bool isAthlete,
  }) = _UserRightsState;

  factory UserRightsState.initial() => UserRightsState(
        teamId: UniqueId(),
        teamMemberId: UniqueId(),
        shouldNavigateBackToFramework: false,
        teamMemberRefreshing: false,
        teamMemberFetchFailureOrSuccess: right(unit),
        teamMember: none(),
        isAdmin: false,
        isWorkoutCreator: false,
        isAnalyst: false,
        isAthlete: false,
      );
}
