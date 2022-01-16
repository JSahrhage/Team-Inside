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
        if (!state.isNavigationRequested) {
          return;
        }
        state.valueFailureOrSuccess.fold(
          (failure) {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return RegistrationInsertPasswordFailureAlertDialog(
                  failure: failure,
                );
              },
            );
            context.read<RegistrationBloc>().add(
                  const RegistrationEvent.proceedingRequestEvaluated(),
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
            RegistrationInsertPasswordReturnButton(
              callback: () {
                context.read<RegistrationBloc>().add(
                      const RegistrationEvent
                          .returnFromPasswordInsertionPagePressed(),
                    );
              },
              height: 64,
            ),
            const RegistrationInsertPasswordLogo(),
            const SizedBox(height: 32),
            const RegistrationInsertPasswordInstructionText(),
            const SizedBox(height: 8),
            RegistrationInsertPasswordPasswordFormField(
              formFieldCallback: (value) {
                context
                    .read<RegistrationBloc>()
                    .add(RegistrationEvent.passwordChanged(value));
              },
              iconButtonCallback: () {
                context.read<RegistrationBloc>().add(
                      const RegistrationEvent.passwordVisibilityIconPressed(),
                    );
              },
              isPasswordVisible: state.isPasswordVisible,
              initialValue: context
                  .read<RegistrationBloc>()
                  .state
                  .password
                  .value
                  .getOrElse(() => ''),
            ),
            const SizedBox(height: 8),
            RegistrationInsertPasswordConfirmationPasswordFormField(
              formFieldCallback: (value) {
                context
                    .read<RegistrationBloc>()
                    .add(RegistrationEvent.confirmationPasswordChanged(value));
              },
              iconButtonCallback: () {
                context.read<RegistrationBloc>().add(
                      const RegistrationEvent
                          .confirmationPasswordVisibilityIconPressed(),
                    );
              },
              isConfirmationPasswordVisible:
                  state.isConfirmationPasswordVisible,
              initialValue: context
                  .read<RegistrationBloc>()
                  .state
                  .confirmationPassword
                  .value
                  .getOrElse(() => ''),
            ),
            const SizedBox(height: 32),
            RegistrationInsertPasswordContinueButton(
              callback: () {
                context.read<RegistrationBloc>().add(
                      const RegistrationEvent.proceedingRequested(),
                    );
              },
            ),
          ],
        );
      },
    );
  }
}
