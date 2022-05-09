part of 'teams_framework_bloc.dart';

@freezed
class TeamsFrameworkState with _$TeamsFrameworkState {
  const factory TeamsFrameworkState({
    required bool shouldSignOut,
    required bool shouldNavigateToTeam,
    required bool joinedTeamsRefreshing,
    required bool teamRequestsRefreshing,
    required bool userSettingsRefreshing,
    required String teamIdToNavigateTo,
    required Either<TeamFailure, KtList<Team>> joinedTeams,
    required Either<TeamFailure, Unit> joinedTeamsFetchFailureOrSuccess,
    required KtList<Tuple2<Team, Option<String>>> joinedTeamURLs,
    required Either<TeamFailure, KtList<Team>> teamRequests,
    required Either<TeamFailure, Unit> teamRequestsFetchFailureOrSuccess,
    required KtList<Tuple2<Team, Option<String>>> teamRequestURLs,
    required Option<String> userImageURL,
  }) = _TeamsFrameworkState;

  factory TeamsFrameworkState.initial() => TeamsFrameworkState(
        shouldSignOut: false,
        shouldNavigateToTeam: false,
        joinedTeamsRefreshing: false,
        teamRequestsRefreshing: false,
        userSettingsRefreshing: false,
        teamIdToNavigateTo: "",
        joinedTeams: right(emptyList()),
        joinedTeamsFetchFailureOrSuccess: right(unit),
        joinedTeamURLs: emptyList(),
        teamRequests: right(emptyList()),
        teamRequestsFetchFailureOrSuccess: right(unit),
        teamRequestURLs: emptyList(),
        userImageURL: none(),
      );
}
