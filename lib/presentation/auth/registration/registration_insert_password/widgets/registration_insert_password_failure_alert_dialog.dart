import 'package:flutter/material.dart';
import 'package:team_inside/domain/core/failures.dart';
import 'package:team_inside/presentation/core/widgets/core_failure_alert_dialog.dart';

class RegistrationInsertPasswordFailureAlertDialog extends StatelessWidget {
  const RegistrationInsertPasswordFailureAlertDialog({
    Key? key,
    required this.failure,
  }) : super(key: key);

  final ValueFailure failure;

  @override
  Widget build(BuildContext context) {
    final String failureStr = failure.map(
      emptyValue: (_) => 'empty_value',
      invalidEmail: (_) => 'invalid_email',
      unsecurePassword: (_) => 'unsecure_password',
      invalidUsername: (_) => 'invalid_username',
      notMatchingPasswords: (_) => 'not_matching_passwords',
    );

    return CoreFailureAlertDialog(text: failureStr);
  }
}
