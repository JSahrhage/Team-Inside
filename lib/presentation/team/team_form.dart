import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/team/team_bloc.dart';
import 'package:team_inside/presentation/routes/router.gr.dart';
import 'package:team_inside/presentation/team/widgets/team_bottom_navigation_bar.dart';
import 'package:team_inside/presentation/team/widgets/team_workout_overview.dart';

class TeamForm extends StatefulWidget {
  @override
  State<TeamForm> createState() => _TeamFormState();
}

class _TeamFormState extends State<TeamForm> {
  int _selectedIndex = 0;
  static final List<Widget> _frameworkWidgets = <Widget>[
    TeamWorkoutOverview(),
    Container(),
    Container(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TeamBloc, TeamState>(
      listener: (context, state) {
        if (state.shouldNavigateBackToFramework) {
          context.router.replace(
            const TeamsFrameworkSlideRightPageRoute(),
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
          bottomNavigationBar: TeamBottomNavigationBar(
            callback: (int index) {
              _onItemTapped(index);
            },
            selectedIndex: _selectedIndex,
          ),
        );
      },
    );
  }
}
