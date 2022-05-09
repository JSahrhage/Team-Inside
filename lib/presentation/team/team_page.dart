import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/team/team_bloc.dart';
import 'package:team_inside/domain/team/team.dart';
import 'package:team_inside/injection.dart';
import 'package:team_inside/presentation/team/team_form.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({
    required this.team,
  });

  final Team team;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: BlocProvider(
          create: (context) => getIt<TeamBloc>(),
          child: TeamForm(),
        ),
      ),
    );
  }
}
