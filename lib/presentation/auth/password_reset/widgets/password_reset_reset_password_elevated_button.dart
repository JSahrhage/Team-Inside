import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/password_reset/password_reset_bloc.dart';
import 'package:team_inside/application/localization/app_localizations.dart';

class PasswordResetResetPasswordElevatedButton extends StatelessWidget {
  const PasswordResetResetPasswordElevatedButton({
    Key? key,
    required this.fieldHeight,
    required this.isSubmitting,
  }) : super(key: key);

  final double fieldHeight;
  final bool isSubmitting;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: SizedBox(
        height: fieldHeight,
        child: ElevatedButton(
          onPressed: () {
            context.read<PasswordResetBloc>().add(
                  const PasswordResetEvent.sendPasswordResetEmailPressed(),
                );
          },
          child: isSubmitting
              ? const CircularProgressIndicator()
              : Text(
                  AppLocalizations.of(context)!.translate(
                    'send_reset_email',
                  )!,
                ),
        ),
      ),
    );
  }
}
