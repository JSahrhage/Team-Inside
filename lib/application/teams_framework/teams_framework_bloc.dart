import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:team_inside/domain/auth/i_auth_facade.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/domain/teams/i_team_repository.dart';
import 'package:team_inside/domain/teams/team.dart';
import 'package:team_inside/domain/teams/value_objects.dart';

part 'teams_framework_event.dart';
part 'teams_framework_state.dart';
part 'teams_framework_bloc.freezed.dart';

@injectable
class TeamsFrameworkBloc
    extends Bloc<TeamsFrameworkEvent, TeamsFrameworkState> {
  final IAuthFacade _authFacade;
  final ITeamRepository _teamRepository;
  TeamsFrameworkBloc(this._authFacade, this._teamRepository)
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
    on<CreateTeam>(
      (event, emit) async {
        final team = Team(
          id: UniqueId(),
          teamname: Teamname('Test'),
          joinedUsers: JoinedUsers(
            emptyList(),
          ),
        );
        await _teamRepository.create(team);
      },
    );
  }
}
