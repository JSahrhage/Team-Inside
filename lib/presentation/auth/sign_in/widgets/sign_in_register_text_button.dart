import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:team_inside/application/localization/app_localizations.dart';
import 'package:team_inside/presentation/routes/router.gr.dart';

class SignInRegisterTextButton extends StatelessWidget {
  const SignInRegisterTextButton({
    Key? key,
    required this.fieldHeight,
  }) : super(key: key);

  final double fieldHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: SizedBox(
        height: fieldHeight,
        child: TextButton(
          onPressed: () {
            context.router.replace(
              const RegistrationPageRoute(),
            );
          },
          child: Text(
            AppLocalizations.of(context)!.translate(
              'register',
            )!,
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ),
    );
  }
}
