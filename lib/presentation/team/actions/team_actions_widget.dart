import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/team/team_bloc.dart';
import 'package:team_inside/domain/team/team_member.dart';
import 'package:team_inside/presentation/presentation_config.dart' as config;
import 'package:team_inside/presentation/team/actions/widgets/actions_analyze_button.dart';
import 'package:team_inside/presentation/team/actions/widgets/actions_create_workout_button.dart';
import 'package:team_inside/presentation/team/actions/widgets/actions_leave_team_button.dart';

class TeamActionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        context.read<TeamBloc>().add(
              const TeamEvent.refreshActions(),
            );
        return Future.delayed(
          const Duration(seconds: config.kRefreshIndicatorDuration),
        );
      },
      child: BlocBuilder<TeamBloc, TeamState>(
        builder: (context, state) {
          if (state.actionsRefreshing) {
            return Container(
              color: Colors.black,
            );
          }
          return state.optionOfCurrentTeamMember.fold(
            () {
              return Container(
                color: Colors.black,
              );
            },
            (currentTeamMember) {
              return _generateCurrentTeamMemberActions(
                currentTeamMember,
                context,
                state,
              );
            },
          );
        },
      ),
    );
  }

  ListView _generateCurrentTeamMemberActions(
    TeamMember currentTeamMember,
    BuildContext context,
    TeamState state,
  ) {
    final isAdmin = currentTeamMember.isAdmin;
    final isWorkoutCreator = currentTeamMember.isWorkoutCreator;
    final isAnalyst = currentTeamMember.isAnalyst;

    final List<Widget> actions = [];

    if (isWorkoutCreator || isAdmin) {
      actions.add(
        TeamActionsCreateWorkoutButton(
          callback: () {},
        ),
      );
      actions.add(
        const SizedBox(
          height: 32,
        ),
      );
    }
    if (isAnalyst || isAdmin) {
      actions.add(
        TeamActionsAnalyzeButton(
          callback: () {},
        ),
      );
      actions.add(
        const SizedBox(
          height: 32,
        ),
      );
    }

    actions.add(
      TeamActionsLeaveTeamButton(
        callback: () {},
      ),
    );

    return ListView.builder(
      shrinkWrap: true,
      itemCount: actions.length,
      itemBuilder: (context, index) {
        return actions[index];
      },
    );
  }
}
