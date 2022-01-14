import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_password/widgets/registration_insert_password_confirmation_password_form_field.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_password/widgets/registration_insert_password_continue_button.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_password/widgets/registration_insert_password_failure_alert_dialog.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_password/widgets/registration_insert_password_instruction_text.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_password/widgets/registration_insert_password_logo.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_password/widgets/registration_insert_password_password_form_field.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_password/widgets/registration_insert_password_return_button.dart';

class RegistrationInsertPasswordForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        if (!state.isValidationRequested) {
          return;
        }
        state.valueFailureOrValidityOption.fold(
          (failure) {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return RegistrationInsertPasswordFailureAlertDialog(
                  failure: failure,
                );
              },
            );
          },
          (_) {
            context.read<RegistrationBloc>().add(
                  const RegistrationEvent
                      .passwordInsertionProceedingValidated(),
                );
          },
        );
      },
      builder: (context, state) {
        return ListView(
          children: [
            const RegistrationInsertPasswordReturnButton(height: 64),
            const RegistrationInsertPasswordLogo(),
            const SizedBox(height: 32),
            const RegistrationInsertPasswordInstructionText(),
            const SizedBox(height: 8),
            RegistrationInsertPasswordPasswordFormField(
              isPasswordVisible: state.isPasswordVisible,
            ),
            const SizedBox(height: 8),
            RegistrationInsertPasswordConfirmationPasswordFormField(
              isConfirmationPasswordVisible:
                  state.isConfirmationPasswordVisible,
            ),
            const SizedBox(height: 32),
            const RegistrationInsertPasswordContinueButton(),
          ],
        );
      },
    );
  }
}
