import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_text_button.dart';

class UserRightsApplyButton extends StatelessWidget {
  const UserRightsApplyButton({
    Key? key,
    required this.callback,
  }) : super(key: key);

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return CoreTextButton(
      callback: callback,
      text: 'apply',
    );
  }
}
