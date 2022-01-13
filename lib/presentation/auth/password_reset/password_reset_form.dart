import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/password_reset/password_reset_bloc.dart';
import 'package:team_inside/presentation/auth/password_reset/widgets/password_reset_email_text_form_field.dart';
import 'package:team_inside/presentation/auth/password_reset/widgets/password_reset_failure_alert_dialog.dart';
import 'package:team_inside/presentation/auth/password_reset/widgets/password_reset_logo.dart';
import 'package:team_inside/presentation/auth/password_reset/widgets/password_reset_reset_password_elevated_button.dart';
import 'package:team_inside/presentation/auth/password_reset/widgets/password_reset_return_button.dart';
import 'package:team_inside/presentation/auth/password_reset/widgets/password_reset_success_alert_dialog.dart';

class PasswordResetForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PasswordResetBloc, PasswordResetState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return PasswordResetFailureAlertDialog(failure: failure);
                },
              );
            },
            (_) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const PasswordResetSuccessAlertDialog();
                },
              );
            },
          ),
        );
      },
      builder: (context, state) {
        return ListView(
          children: [
            const PasswordResetReturnButton(height: 64),
            const PasswordResetLogo(),
            const SizedBox(height: 32),
            const PasswordResetEmailTextFormField(),
            const SizedBox(height: 16),
            PasswordResetResetPasswordElevatedButton(
              isSubmitting: state.isSubmitting,
            )
          ],
        );
      },
    );
  }
}
