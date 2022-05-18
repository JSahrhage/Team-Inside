import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/team/team_bloc.dart';
import 'package:team_inside/presentation/presentation_config.dart' as config;
import 'package:team_inside/presentation/team/widgets/team_return_to_framework_button.dart';

class TeamWorkoutOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        context.read<TeamBloc>().add(
              const TeamEvent.refreshWorkouts(),
            );
        return Future.delayed(
          const Duration(seconds: config.kRefreshIndicatorDuration),
        );
      },
      child: BlocBuilder<TeamBloc, TeamState>(
        builder: (context, state) {
          return ListView(
            children: [
              TeamReturnToFrameworkButton(
                callback: () {
                  context.read<TeamBloc>().add(
                        const TeamEvent.navigateBackToFramework(),
                      );
                },
                height: 64,
              ),
              const SizedBox(height: 64),
            ],
          );
        },
      ),
    );
  }
}
