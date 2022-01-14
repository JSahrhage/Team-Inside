import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/teams_framework/teams_framework_bloc.dart';
import 'package:team_inside/injection.dart';
import 'package:team_inside/presentation/teams_framework/teams_framework_form.dart';

class TeamsFrameworkPage extends StatelessWidget {
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
          create: (context) => getIt<TeamsFrameworkBloc>(),
          child: TeamsFrameworkForm(),
        ),
      ),
    );
  }
}
