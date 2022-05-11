part of 'team_bloc.dart';

@freezed
class TeamState with _$TeamState {
  const factory TeamState({
    required UniqueId teamId,
    required UniqueId teamMemberIdToNavigateTo,
    required bool shouldNavigateBackToFramework,
    required bool shouldNavigateToUserRights,
    required bool usersRefreshing,
    required Either<UserFailure, Unit> usersFetchFailureOrSuccess,
    required KtList<Tuple2<User, Option<String>>> userURLs,
  }) = _TeamState;

  factory TeamState.initial() => TeamState(
        teamId: UniqueId(),
        teamMemberIdToNavigateTo: UniqueId(),
        shouldNavigateBackToFramework: false,
        shouldNavigateToUserRights: false,
        usersRefreshing: false,
        usersFetchFailureOrSuccess: right(unit),
        userURLs: emptyList(),
      );
}
