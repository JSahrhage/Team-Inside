part of 'joined_teams_watcher_bloc.dart';

@freezed
class JoinedTeamsWatcherEvent with _$JoinedTeamsWatcherEvent {
  const factory JoinedTeamsWatcherEvent.watchStarted() = WatchStarted;
  const factory JoinedTeamsWatcherEvent.teamsReceived(
    Either<TeamFailure, KtList<Team>> failureOrTeams,
  ) = TeamsReceived;
}
