import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:team_inside/domain/auth/i_user_repository.dart';
import 'package:team_inside/domain/auth/user.dart';
import 'package:team_inside/domain/auth/user_failure.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/domain/image/i_image_facade.dart';
import 'package:team_inside/domain/team/i_team_repository.dart';

part 'team_event.dart';
part 'team_state.dart';
part 'team_bloc.freezed.dart';

@injectable
class TeamBloc extends Bloc<TeamEvent, TeamState> {
  final IUserRepository _userRepository;
  final ITeamRepository _teamRepository;
  final IImageFacade _imageFacade;
  TeamBloc(
    this._userRepository,
    this._teamRepository,
    this._imageFacade,
  ) : super(TeamState.initial()) {
    on<SetTeamId>(
      (event, emit) {
        emit(
          state.copyWith(
            teamId: event.teamId,
          ),
        );
      },
    );
    on<NavigateBackToFramework>(
      (event, emit) {
        emit(
          state.copyWith(
            shouldNavigateBackToFramework: true,
          ),
        );
      },
    );
    on<RefreshUsers>(
      (event, emit) async {
        emit(
          state.copyWith(
            usersRefreshing: true,
          ),
        );

        final failureOrTeam = await _teamRepository.getTeamById(state.teamId);
        final List<Tuple2<User, Option<String>>> userURLs = [];
        await failureOrTeam.fold(
          (failure) {},
          (team) async {
            for (final joinedUser in team.joinedUsers.iter) {
              final failureOrUser =
                  await _userRepository.getUserById(joinedUser);
              final optionOfUserURL =
                  await _imageFacade.getDownloadURLForUserImage(
                joinedUser.getOrCrash(),
              );
              failureOrUser.fold(
                (failure) {
                  emit(
                    state.copyWith(
                      usersFetchFailureOrSuccess: left(failure),
                    ),
                  );
                },
                (user) {
                  userURLs.add(
                    Tuple2(user, optionOfUserURL),
                  );
                },
              );
            }
          },
        );
        userURLs.sort(
          (a, b) => a.value1.username.getOrCrash().compareTo(
                b.value1.username.getOrCrash(),
              ),
        );
        emit(
          state.copyWith(
            usersRefreshing: false,
            userURLs: userURLs.toImmutableList(),
            usersFetchFailureOrSuccess: right(unit),
          ),
        );
      },
    );
    on<NavigateToUserRights>(
      (event, emit) async {
        final teamMemberIdToNavigateTo = event.teamMemberId;
        final currentUserOrFailure = await _userRepository.getCurrentUser();
        await currentUserOrFailure.fold(
          (failure) {},
          (currentUser) async {
            final failureOrTeam =
                await _teamRepository.getTeamById(state.teamId);
            failureOrTeam.fold(
              (failure) {},
              (team) {
                if (currentUser.id == teamMemberIdToNavigateTo) {
                  return;
                }
                for (final teamMember in team.teamMembers.iter) {
                  if (teamMember.id == currentUser.id && teamMember.isAdmin) {
                    emit(
                      state.copyWith(
                        teamMemberIdToNavigateTo: teamMemberIdToNavigateTo,
                        shouldNavigateToUserRights: true,
                      ),
                    );
                  }
                }
              },
            );
          },
        );
      },
    );
  }
}
