import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/team/workout/workout_bloc.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/injection.dart';
import 'package:team_inside/presentation/team/workout/workout_form.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({
    required this.teamId,
  });

  final UniqueId teamId;

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
          create: (context) => getIt<WorkoutBloc>()
            ..add(
              WorkoutEvent.setTeamId(teamId),
            ),
          child: WorkoutForm(),
        ),
      ),
    );
  }
}
