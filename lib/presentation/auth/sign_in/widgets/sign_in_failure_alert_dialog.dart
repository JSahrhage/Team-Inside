import 'package:flutter/material.dart';
import 'package:team_inside/application/localization/app_localizations.dart';
import 'package:team_inside/domain/auth/auth_failure.dart';

class SignInFailureAlertDialog extends StatelessWidget {
  const SignInFailureAlertDialog({
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
      titleTextStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 20,
      ),
      backgroundColor: Colors.redAccent,
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
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
