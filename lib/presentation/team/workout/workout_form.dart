import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/team/workout/workout_bloc.dart';
import 'package:team_inside/presentation/presentation_config.dart' as config;
import 'package:team_inside/presentation/routes/router.gr.dart';

class WorkoutForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorkoutBloc, WorkoutState>(
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
            // context.read<UserRightsBloc>().add(
            //       const UserRightsEvent.updateTeamMember(),
            //     );
            return Future.delayed(
              const Duration(seconds: config.kRefreshIndicatorDuration),
            );
          },
          child: Container(),
        );
      },
    );
  }
}
