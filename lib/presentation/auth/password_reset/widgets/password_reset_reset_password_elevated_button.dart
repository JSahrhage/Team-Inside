import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_elevated_button.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class PasswordResetResetPasswordElevatedButton extends StatelessWidget {
  const PasswordResetResetPasswordElevatedButton({
    Key? key,
    required this.callback,
    required this.isSubmitting,
  }) : super(key: key);

  final VoidCallback callback;
  final bool isSubmitting;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CoreElevatedButton(
        callback: callback,
        text: 'send_reset_email',
      ),
    );
  }
}
