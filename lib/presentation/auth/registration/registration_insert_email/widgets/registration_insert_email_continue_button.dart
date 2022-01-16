import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_elevated_button.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class RegistrationInsertEmailContinueButton extends StatelessWidget {
  const RegistrationInsertEmailContinueButton({
    Key? key,
    required this.callback,
  }) : super(key: key);

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CoreElevatedButton(
        callback: callback,
        text: 'continue',
      ),
    );
  }
}
