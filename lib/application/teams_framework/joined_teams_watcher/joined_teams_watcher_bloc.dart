import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:team_inside/domain/teams/i_team_repository.dart';
import 'package:team_inside/domain/teams/team.dart';
import 'package:team_inside/domain/teams/team_failure.dart';

part 'joined_teams_watcher_event.dart';
part 'joined_teams_watcher_state.dart';
part 'joined_teams_watcher_bloc.freezed.dart';

@injectable
class JoinedTeamsWatcherBloc
    extends Bloc<JoinedTeamsWatcherEvent, JoinedTeamsWatcherState> {
  final ITeamRepository _teamRepository;

  late StreamSubscription<Either<TeamFailure, KtList<Team>>>
      _teamsStreamSubscription;

  JoinedTeamsWatcherBloc(this._teamRepository, this._teamsStreamSubscription)
      : super(const JoinedTeamsWatcherState.initial()) {
    on<WatchStarted>(
      (event, emit) {
        emit(
          const JoinedTeamsWatcherState.loadInProgress(),
        );
        _teamsStreamSubscription = _teamRepository.watchJoinedTeams().listen(
              (teams) => add(
                JoinedTeamsWatcherEvent.teamsReceived(teams),
              ),
            );
      },
    );
    on<TeamsReceived>(
      (event, emit) {
        event.failureOrTeams.fold(
          (failure) => JoinedTeamsWatcherState.loadFailure(failure),
          (teams) => JoinedTeamsWatcherState.loadSuccess(teams),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _teamsStreamSubscription.cancel();
    return super.close();
  }
}
