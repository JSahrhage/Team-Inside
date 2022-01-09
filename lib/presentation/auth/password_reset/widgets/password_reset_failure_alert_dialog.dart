import 'package:flutter/material.dart';
import 'package:team_inside/application/localization/app_localizations.dart';
import 'package:team_inside/domain/auth/auth_failure.dart';

class PasswordResetFailureAlertDialog extends StatelessWidget {
  const PasswordResetFailureAlertDialog({
    Key? key,
    required this.failure,
  }) : super(key: key);

  final AuthFailure failure;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        AppLocalizations.of(context)!.translate('failure')!,
        textAlign: TextAlign.center,
      ),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.onError,
        fontSize: 20,
      ),
      backgroundColor: Theme.of(context).colorScheme.error,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      content: Text(
        failure.map(
          cancelledByUser: (_) =>
              AppLocalizations.of(context)!.translate('cancelled_by_user')!,
          serverError: (_) =>
              AppLocalizations.of(context)!.translate('server_error')!,
          emailAlreadyInUse: (_) =>
              AppLocalizations.of(context)!.translate('email_already_in_use')!,
          invalidEmailAndPasswordCombination: (_) =>
              AppLocalizations.of(context)!.translate(
            'invalid_email_and_password_combination',
          )!,
          invalidEmail: (_) =>
              AppLocalizations.of(context)!.translate('invalid_email')!,
          userNotFound: (_) =>
              AppLocalizations.of(context)!.translate('user_not_found')!,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
