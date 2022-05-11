import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/domain/team/i_team_repository.dart';
import 'package:team_inside/domain/team/team_failure.dart';
import 'package:team_inside/domain/team/team_member.dart';

part 'user_rights_event.dart';
part 'user_rights_state.dart';
part 'user_rights_bloc.freezed.dart';

@injectable
class UserRightsBloc extends Bloc<UserRightsEvent, UserRightsState> {
  final ITeamRepository _teamRepository;
  UserRightsBloc(
    this._teamRepository,
  ) : super(UserRightsState.initial()) {
    on<NavigateBackToTeam>(
      (event, emit) {
        emit(
          state.copyWith(
            shouldNavigateBackToFramework: true,
          ),
        );
      },
    );
    on<SetIds>(
      (event, emit) {
        emit(
          state.copyWith(
            teamId: event.teamId,
            teamMemberId: event.teamMemberId,
          ),
        );
      },
    );
    on<UpdateTeamMember>(
      (event, emit) async {
        emit(
          state.copyWith(
            teamMemberRefreshing: true,
          ),
        );

        final failureOrTeam = await _teamRepository.getTeamById(state.teamId);
        await failureOrTeam.fold(
          (failure) {
            emit(
              state.copyWith(
                teamMemberRefreshing: false,
                teamMemberFetchFailureOrSuccess: left(failure),
                teamMember: none(),
              ),
            );
          },
          (team) async {
            for (final teamMember in team.teamMembers.iter) {
              if (teamMember.id == state.teamMemberId) {
                emit(
                  state.copyWith(
                    teamMemberRefreshing: false,
                    teamMemberFetchFailureOrSuccess: right(unit),
                    teamMember: some(teamMember),
                    isAdmin: teamMember.isAdmin,
                    isWorkoutCreator: teamMember.isWorkoutCreator,
                    isAnalyst: teamMember.isAnalyst,
                    isAthlete: teamMember.isAthlete,
                  ),
                );
              }
            }
          },
        );
      },
    );
    on<UpdateAdminRight>(
      (event, emit) {
        emit(
          state.copyWith(
            isAdmin: event.isAdmin,
          ),
        );
      },
    );
    on<UpdateWorkoutCreatorRight>(
      (event, emit) {
        emit(
          state.copyWith(
            isWorkoutCreator: event.isWorkoutCreator,
          ),
        );
      },
    );
    on<UpdateAnalystRight>(
      (event, emit) {
        emit(
          state.copyWith(
            isAnalyst: event.isAnalyst,
          ),
        );
      },
    );
    on<UpdateAthleteRight>(
      (event, emit) {
        emit(
          state.copyWith(
            isAthlete: event.isAthlete,
          ),
        );
      },
    );
    on<ApplyChanges>(
      (event, emit) async {
        emit(
          state.copyWith(
            teamMemberRefreshing: true,
          ),
        );

        final failureOrTeam = await _teamRepository.getTeamById(state.teamId);
        await failureOrTeam.fold(
          (failure) {},
          (team) async {
            final updatedTeamMembers = team.teamMembers.toMutableList();
            final indexOfTeamMemberToBeRemoved =
                updatedTeamMembers.indexOfFirst(
              (teamMember) {
                if (teamMember.id == state.teamMemberId) {
                  return true;
                }
                return false;
              },
            );
            if (indexOfTeamMemberToBeRemoved != -1) {
              updatedTeamMembers.removeAt(indexOfTeamMemberToBeRemoved);
            }
            updatedTeamMembers.add(
              TeamMember(
                id: state.teamMemberId,
                isAdmin: state.isAdmin,
                isWorkoutCreator: state.isWorkoutCreator,
                isAnalyst: state.isAnalyst,
                isAthlete: state.isAthlete,
              ),
            );
            final updatedTeam = team.copyWith(
              teamMembers: updatedTeamMembers.asList().toImmutableList(),
            );
            await _teamRepository.update(updatedTeam);
          },
        );

        add(
          const UserRightsEvent.updateTeamMember(),
        );
      },
    );
  }
}
