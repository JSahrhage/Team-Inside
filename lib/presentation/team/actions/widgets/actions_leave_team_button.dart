import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';
import 'package:team_inside/presentation/core/widgets/core_text_button.dart';

class TeamActionsLeaveTeamButton extends StatelessWidget {
  const TeamActionsLeaveTeamButton({
    Key? key,
    required this.callback,
  }) : super(key: key);

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CoreTextButton(
        callback: callback,
        text: 'leave_team',
      ),
    );
  }
}
