import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:team_inside/application/localization/app_localizations.dart';

class SignInPasswordForgottenText extends StatelessWidget {
  const SignInPasswordForgottenText({
    Key? key,
    required this.callback,
  }) : super(key: key);

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: RichText(
        textAlign: TextAlign.end,
        textScaleFactor: 0.8,
        text: TextSpan(
          text: AppLocalizations.of(context)!.translate(
            'password_forgotten',
          ),
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
          recognizer: TapGestureRecognizer()..onTap = callback,
        ),
      ),
    );
  }
}
