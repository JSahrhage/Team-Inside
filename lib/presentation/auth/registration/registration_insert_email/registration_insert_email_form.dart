import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_email/widgets/registration_insert_email_continue_button.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_email/widgets/registration_insert_email_email_form_field.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_email/widgets/registration_insert_email_failure_alert_dialog.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_email/widgets/registration_insert_email_instruction_text.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_email/widgets/registration_insert_email_logo.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_email/widgets/registration_insert_email_return_button.dart';
import 'package:team_inside/presentation/routes/router.gr.dart';

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
          children: [
            RegistrationInsertEmailReturnButton(
              callback: () {
                context.router.replace(
                  const SignInSlideRightPageRoute(),
                );
              },
              height: 64,
            ),
            const RegistrationInsertEmailLogo(),
            const SizedBox(height: 32),
            const RegistrationInsertEmailInstructionText(),
            const SizedBox(height: 8),
            const RegistrationInsertEmailEmailFormField(),
            const SizedBox(height: 32),
            const RegistrationInsertEmailContinueButton(),
          ],
        );
      },
    );
  }
}
