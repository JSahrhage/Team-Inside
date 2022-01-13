import 'package:flutter/material.dart';
import 'package:team_inside/domain/core/failures.dart';
import 'package:team_inside/presentation/core/widgets/core_failure_alert_dialog.dart';

class RegistrationInsertEmailFailureAlertDialog extends StatelessWidget {
  const RegistrationInsertEmailFailureAlertDialog({
    Key? key,
    required this.failure,
  }) : super(key: key);

  final ValueFailure failure;

  @override
  Widget build(BuildContext context) {
    final String failureStr = failure.map(
      invalidEmail: (_) => 'invalid_email',
      unsecurePassword: (_) => 'unsecure_password',
      invalidUsername: (_) => 'invalid_username',
    );

    return CoreFailureAlertDialog(text: failureStr);
  }
}
