import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:team_inside/domain/auth/i_auth_facade.dart';
import 'package:team_inside/domain/auth/i_user_repository.dart';
import 'package:team_inside/domain/auth/user.dart';
import 'package:team_inside/domain/auth/user_failure.dart';
import 'package:team_inside/domain/auth/value_objects.dart';
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
  final IUserRepository _userRepository;
  final ITeamRepository _teamRepository;
  final IImageFacade _imageFacade;

  TeamsFrameworkBloc(
    this._authFacade,
    this._userRepository,
    this._teamRepository,
    this._imageFacade,
  ) : super(TeamsFrameworkState.initial()) {
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
    on<DeleteUser>(
      (event, emit) async {
        await _authFacade.deleteUser();
        emit(
          state.copyWith(
            shouldSignOut: true,
          ),
        );
      },
    );
    on<ChangeUsername>(
      (event, emit) async {
        final currentUser = await _userRepository.getCurrentUser();
        currentUser.fold(
          (failure) {},
          (user) async {
            final updatedUser = user.copyWith(
              username: Username(event.username),
            );
            await _userRepository.update(updatedUser);
          },
        );
      },
    );
    on<RefreshJoinedTeams>(
      (event, emit) async {
        emit(
          state.copyWith(
            joinedTeamsRefreshing: true,
          ),
        );

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
                joinedTeamsRefreshing: false,
                joinedTeams: joinedTeams,
                joinedTeamURLs: joinedTeamURLs.toImmutableList(),
                joinedTeamsFetchFailureOrSuccess: right(unit),
              ),
            );
          },
        );
      },
    );
    on<RefreshTeamRequests>(
      (event, emit) async {
        emit(
          state.copyWith(
            teamRequestsRefreshing: true,
          ),
        );

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
                teamRequestsRefreshing: false,
                teamRequests: teamRequests,
                teamRequestURLs: teamRequestURLs.toImmutableList(),
                teamRequestsFetchFailureOrSuccess: right(unit),
              ),
            );
          },
        );
      },
    );
    on<RefreshUserSettings>(
      (event, emit) async {
        emit(
          state.copyWith(
            userSettingsRefreshing: true,
          ),
        );

        await _authFacade.getSignedInUser().fold(
          () async {},
          (user) async {
            final userImageURL = await _imageFacade.getDownloadURLForUserImage(
              user.id.getOrCrash(),
            );
            userImageURL.fold(() {}, (user) {});
            emit(
              state.copyWith(
                userSettingsRefreshing: false,
                userImageURL: userImageURL,
              ),
            );
          },
        );
      },
    );
    on<ImagePicked>(
      (event, emit) async {
        await _authFacade.getSignedInUser().fold(
          () async {},
          (user) async {
            await _imageFacade.uploadUserImage(
              event.image,
              user.id.getOrCrash(),
            );
            add(
              const TeamsFrameworkEvent.refreshUserSettings(),
            );
          },
        );
      },
    );
  }
}
