import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/teams_framework/teams_framework_bloc.dart';

class TeamsFrameworkJoinedTeamsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TeamsFrameworkBloc, TeamsFrameworkState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container();
      },
    );
  }
}
