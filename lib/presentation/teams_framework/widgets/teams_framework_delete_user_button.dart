import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/teams_framework/teams_framework_bloc.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';
import 'package:team_inside/presentation/core/widgets/core_text_button.dart';

class TeamsFrameworkDeleteUserButton extends StatelessWidget {
  const TeamsFrameworkDeleteUserButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CoreTextButton(
        callback: () {
          context.read<TeamsFrameworkBloc>().add(
                const TeamsFrameworkEvent.deleteUser(),
              );
        },
        text: 'delete_user',
      ),
    );
  }
}
