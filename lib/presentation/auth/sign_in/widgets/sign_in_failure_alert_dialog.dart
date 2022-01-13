import 'package:flutter/material.dart';
import 'package:team_inside/domain/auth/auth_failure.dart';
import 'package:team_inside/presentation/core/widgets/core_failure_alert_dialog.dart';

class SignInFailureAlertDialog extends StatelessWidget {
  const SignInFailureAlertDialog({
    Key? key,
    required this.failure,
  }) : super(key: key);

  final AuthFailure failure;

  @override
  Widget build(BuildContext context) {
    final String failureStr = failure.map(
      cancelledByUser: (_) => 'cancelled_by_user',
      serverError: (_) => 'server_error',
      emailAlreadyInUse: (_) => 'email_already_in_use',
      invalidEmailAndPasswordCombination: (_) =>
          'invalid_email_and_password_combination',
      invalidEmail: (_) => 'invalid_email',
      userNotFound: (_) => 'user_not_found',
    );

    return CoreFailureAlertDialog(text: failureStr);
  }
}
