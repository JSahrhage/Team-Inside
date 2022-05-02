import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/teams_framework/teams_framework_bloc.dart';
import 'package:team_inside/presentation/teams_framework/widgets/teams_framework_create_team_button.dart';
import 'package:team_inside/presentation/teams_framework/widgets/teams_framework_sign_out_button.dart';

class TeamsFrameworkUserSettingsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TeamsFrameworkBloc, TeamsFrameworkState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView(
          shrinkWrap: true,
          children: const [
            TeamsFrameworkSignOutButton(),
            TeamsFrameworkCreateTeamButton(),
          ],
        );
      },
    );
  }
}
