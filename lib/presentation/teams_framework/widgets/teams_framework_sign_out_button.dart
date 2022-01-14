import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/teams_framework/teams_framework_bloc.dart';
import 'package:team_inside/presentation/core/widgets/core_elevated_button.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class TeamsFrameworkSignOutButton extends StatelessWidget {
  const TeamsFrameworkSignOutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CoreElevatedButton(
        callback: () {
          context.read<TeamsFrameworkBloc>().add(
                const TeamsFrameworkEvent.signOut(),
              );
        },
        text: 'sign_out',
      ),
    );
  }
}
