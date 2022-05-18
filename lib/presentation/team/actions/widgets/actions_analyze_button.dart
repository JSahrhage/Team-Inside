import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';
import 'package:team_inside/presentation/core/widgets/core_text_button.dart';

class TeamActionsAnalyzeButton extends StatelessWidget {
  const TeamActionsAnalyzeButton({
    Key? key,
    required this.callback,
  }) : super(key: key);

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CoreTextButton(
        callback: callback,
        text: 'analyze',
      ),
    );
  }
}
