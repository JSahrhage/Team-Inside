import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/team/user_rights/user_rights_bloc.dart';
import 'package:team_inside/presentation/presentation_config.dart' as config;
import 'package:team_inside/presentation/routes/router.gr.dart';
import 'package:team_inside/presentation/team/user_rights/widgets/user_rights_apply_button.dart';
import 'package:team_inside/presentation/team/user_rights/widgets/user_rights_checkbox_row.dart';
import 'package:team_inside/presentation/team/user_rights/widgets/user_rights_return_to_team_button.dart';
import 'package:team_inside/presentation/team/user_rights/widgets/user_rights_title.dart';

class UserRightsForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserRightsBloc, UserRightsState>(
      listener: (context, state) {
        if (state.shouldNavigateBackToFramework) {
          context.router.replace(
            TeamSlideRightPageRoute(
              teamId: state.teamId,
            ),
          );
          return;
        }
      },
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () {
            context.read<UserRightsBloc>().add(
                  const UserRightsEvent.updateTeamMember(),
                );
            return Future.delayed(
              const Duration(seconds: config.kRefreshIndicatorDuration),
            );
          },
          child: state.teamMemberFetchFailureOrSuccess.fold(
            (failure) {
              return Container(
                color: Colors.black,
              );
            },
            (success) {
              return state.teamMember.fold(
                () {
                  return Container(
                    color: Colors.black,
                  );
                },
                (teamMember) {
                  return _generateListView(context, state);
                },
              );
            },
          ),
        );
      },
    );
  }

  ListView _generateListView(BuildContext context, UserRightsState state) {
    return ListView(
      children: [
        UserRightsReturnToTeamButton(
          callback: () {
            context.read<UserRightsBloc>().add(
                  const UserRightsEvent.navigateBackToTeam(),
                );
          },
          height: 64,
        ),
        const SizedBox(height: 16),
        const UserRightsTitle(),
        const SizedBox(height: 64),
        UserRightsCheckboxRow(
          callback: (bool? value) {
            context.read<UserRightsBloc>().add(
                  UserRightsEvent.updateAdminRight(value!),
                );
          },
          text: 'admin',
          value: state.isAdmin,
        ),
        UserRightsCheckboxRow(
          callback: (bool? value) {
            context.read<UserRightsBloc>().add(
                  UserRightsEvent.updateWorkoutCreatorRight(
                    value!,
                  ),
                );
          },
          text: 'workout_creator',
          value: state.isWorkoutCreator,
        ),
        UserRightsCheckboxRow(
          callback: (bool? value) {
            context.read<UserRightsBloc>().add(
                  UserRightsEvent.updateAnalystRight(value!),
                );
          },
          text: 'analyst',
          value: state.isAnalyst,
        ),
        UserRightsCheckboxRow(
          callback: (bool? value) {
            context.read<UserRightsBloc>().add(
                  UserRightsEvent.updateAthleteRight(value!),
                );
          },
          text: 'athlete',
          value: state.isAthlete,
        ),
        const SizedBox(height: 64),
        UserRightsApplyButton(
          callback: () {
            context.read<UserRightsBloc>().add(
                  const UserRightsEvent.applyChanges(),
                );
          },
        )
      ],
    );
  }
}
