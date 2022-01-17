import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_success_alert_dialog.dart';

class PasswordResetSuccessAlertDialog extends StatelessWidget {
  const PasswordResetSuccessAlertDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CoreSuccessAlertDialog(text: 'reset_email_send');
  }
}
