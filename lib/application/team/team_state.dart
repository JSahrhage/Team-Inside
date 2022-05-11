part of 'team_bloc.dart';

@freezed
class TeamState with _$TeamState {
  const factory TeamState({
    required UniqueId teamId,
    required bool shouldNavigateBackToFramework,
    required bool usersRefreshing,
    required Either<UserFailure, Unit> usersFetchFailureOrSuccess,
    required KtList<Tuple2<User, Option<String>>> userURLs,
  }) = _TeamState;

  factory TeamState.initial() => TeamState(
        teamId: UniqueId(),
        shouldNavigateBackToFramework: false,
        usersRefreshing: false,
        usersFetchFailureOrSuccess: right(unit),
        userURLs: emptyList(),
      );
}
