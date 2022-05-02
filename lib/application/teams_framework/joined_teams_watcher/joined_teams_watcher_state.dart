part of 'joined_teams_watcher_bloc.dart';

@freezed
class JoinedTeamsWatcherState with _$JoinedTeamsWatcherState {
  const factory JoinedTeamsWatcherState.initial() = Initial;
  const factory JoinedTeamsWatcherState.loadInProgress() =
      DataTransferInProgress;
  const factory JoinedTeamsWatcherState.loadSuccess(KtList<Team> notes) =
      LoadSuccess;
  const factory JoinedTeamsWatcherState.loadFailure(TeamFailure noteFailure) =
      LoadFailure;
}
