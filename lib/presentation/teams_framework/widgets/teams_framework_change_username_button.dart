import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/teams_framework/teams_framework_bloc.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';
import 'package:team_inside/presentation/core/widgets/core_text_button.dart';
import 'package:team_inside/presentation/teams_framework/widgets/teams_framework_change_username_dialog.dart';

class TeamsFrameworkChangeUsernameButton extends StatelessWidget {
  const TeamsFrameworkChangeUsernameButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CoreTextButton(
        callback: () async {
          showDialog<String>(
            context: context,
            builder: (BuildContext context) {
              return TeamsFrameworkChangeUsernameDialog();
            },
          ).then(
            (username) {
              if (username != null) {
                context.read<TeamsFrameworkBloc>().add(
                      TeamsFrameworkEvent.changeUsername(
                        username,
                      ),
                    );
              }
            },
          );
        },
        text: 'change_username',
      ),
    );
  }
}
