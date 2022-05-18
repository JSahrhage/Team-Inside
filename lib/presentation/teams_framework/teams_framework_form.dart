import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:team_inside/application/teams_framework/teams_framework_bloc.dart';
import 'package:team_inside/domain/team/team.dart';
import 'package:team_inside/presentation/routes/router.gr.dart';
import 'package:team_inside/presentation/teams_framework/teams_framework_bottom_navigation_bar.dart';
import 'package:team_inside/presentation/teams_framework/widgets/teams_framework_joined_teams_widget.dart';
import 'package:team_inside/presentation/teams_framework/widgets/teams_framework_team_requests_widget.dart';
import 'package:team_inside/presentation/teams_framework/widgets/teams_framework_user_settings_widget.dart';

class TeamsFrameworkForm extends StatefulWidget {
  @override
  State<TeamsFrameworkForm> createState() => _TeamsFrameworkFormState();
}

class _TeamsFrameworkFormState extends State<TeamsFrameworkForm> {
  int _selectedIndex = 0;
  static final List<Widget> _frameworkWidgets = <Widget>[
    TeamsFrameworkJoinedTeamsWidget(),
    TeamsFrameworkTeamRequestsWidget(),
    TeamsFrameworkUserSettingsWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TeamsFrameworkBloc, TeamsFrameworkState>(
      listener: (context, state) {
        if (state.shouldNavigateToTeam) {
          state.joinedTeams.fold(
            (failure) {},
            (joinedTeams) {
              final joinedTeamOption =
                  _getJoinedTeamById(joinedTeams, state.teamIdToNavigateTo);
              joinedTeamOption.fold(
                () {},
                (team) {
                  context.router.replace(
                    TeamSlideLeftPageRoute(
                      teamId: team.id,
                    ),
                  );
                },
              );
            },
          );
        }
        if (state.shouldSignOut) {
          context.router.replace(
            const SignInSlideRightPageRoute(),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          extendBody: true,
          body: Center(
            child: _frameworkWidgets.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: TeamsFrameworkBottomNavigationBar(
            callback: (int index) {
              _onItemTapped(index);
            },
            selectedIndex: _selectedIndex,
          ),
        );
      },
    );
  }

  dartz.Option<Team> _getJoinedTeamById(
    KtList<Team> joinedTeams,
    String teamId,
  ) {
    for (final team in joinedTeams.iter) {
      if (team.id.getOrCrash() == teamId) {
        return dartz.some(team);
      }
    }
    return dartz.none();
  }
}
