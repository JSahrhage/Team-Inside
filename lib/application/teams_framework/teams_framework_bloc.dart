import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:team_inside/domain/auth/i_auth_facade.dart';
import 'package:team_inside/domain/image/i_image_facade.dart';
import 'package:team_inside/domain/teams/i_team_repository.dart';
import 'package:team_inside/domain/teams/team.dart';
import 'package:team_inside/domain/teams/team_failure.dart';

part 'teams_framework_event.dart';
part 'teams_framework_state.dart';
part 'teams_framework_bloc.freezed.dart';

@injectable
class TeamsFrameworkBloc
    extends Bloc<TeamsFrameworkEvent, TeamsFrameworkState> {
  final IAuthFacade _authFacade;
  final ITeamRepository _teamRepository;
  final IImageFacade _imageFacade;

  TeamsFrameworkBloc(this._authFacade, this._teamRepository, this._imageFacade)
      : super(TeamsFrameworkState.initial()) {
    on<SignOut>(
      (event, emit) async {
        await _authFacade.signOut();
        emit(
          state.copyWith(
            shouldSignOut: true,
          ),
        );
      },
    );
    on<RefreshJoinedTeams>(
      (event, emit) async {
        final joinedTeams = await _teamRepository.getJoinedTeams();

        await joinedTeams.fold(
          (failure) {
            emit(
              state.copyWith(
                joinedTeamsFetchFailureOrSuccess: left(failure),
              ),
            );
          },
          (success) async {
            final List<Tuple2<Team, Option<String>>> joinedTeamURLs = [];
            for (final joinedTeam in success.iter) {
              final imageURL = await _imageFacade.getDownloadURLForGroupImage(
                joinedTeam.id.getOrCrash(),
              );
              joinedTeamURLs.add(
                Tuple2(joinedTeam, imageURL),
              );
            }
            emit(
              state.copyWith(
                joinedTeamURLs: joinedTeamURLs.toImmutableList(),
                joinedTeamsFetchFailureOrSuccess: right(unit),
              ),
            );
          },
        );
        emit(
          state.copyWith(
            joinedTeams: joinedTeams,
          ),
        );
      },
    );
    on<RefreshTeamRequests>(
      (event, emit) async {
        final teamRequests = await _teamRepository.getTeamRequests();
        await teamRequests.fold(
          (failure) {
            emit(
              state.copyWith(
                teamRequestsFetchFailureOrSuccess: left(failure),
              ),
            );
          },
          (success) async {
            final List<Tuple2<Team, Option<String>>> teamRequestURLs = [];
            for (final teamRequest in success.iter) {
              final imageURL = await _imageFacade.getDownloadURLForGroupImage(
                teamRequest.id.getOrCrash(),
              );
              teamRequestURLs.add(
                Tuple2(teamRequest, imageURL),
              );
            }
            emit(
              state.copyWith(
                teamRequestURLs: teamRequestURLs.toImmutableList(),
                teamRequestsFetchFailureOrSuccess: right(unit),
              ),
            );
          },
        );

        emit(
          state.copyWith(
            teamRequests: teamRequests,
          ),
        );
      },
    );
  }
}
