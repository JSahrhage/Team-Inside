import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_email/widgets/registration_insert_email_continue_button.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_email/widgets/registration_insert_email_email_form_field.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_email/widgets/registration_insert_email_failure_alert_dialog.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_email/widgets/registration_insert_email_instruction_text.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_email/widgets/registration_insert_email_logo.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_email/widgets/registration_insert_email_return_button.dart';

class RegistrationInsertEmailForm extends StatelessWidget {
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
                return RegistrationInsertEmailFailureAlertDialog(
                  failure: failure,
                );
              },
            );
          },
          (_) {
            context.read<RegistrationBloc>().add(
                  const RegistrationEvent.emailInsertionProceedingValidated(),
                );
          },
        );
      },
      builder: (context, state) {
        return ListView(
          children: const [
            RegistrationInsertEmailReturnButton(height: 64),
            RegistrationInsertEmailLogo(),
            SizedBox(height: 32),
            RegistrationInsertEmailInstructionText(),
            SizedBox(height: 8),
            RegistrationInsertEmailEmailFormField(),
            SizedBox(height: 32),
            RegistrationInsertEmailContinueButton(),
          ],
        );
      },
    );
  }
}
