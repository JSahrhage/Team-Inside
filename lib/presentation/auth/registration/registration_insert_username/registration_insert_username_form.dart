import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_username/widgets/registration_insert_username_auth_failure_alert_dialog.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_username/widgets/registration_insert_username_instruction_text.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_username/widgets/registration_insert_username_logo.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_username/widgets/registration_insert_username_register_button.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_username/widgets/registration_insert_username_return_button.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_username/widgets/registration_insert_username_username_form_field.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_username/widgets/registration_insert_username_value_failure_alert_dialog.dart';
import 'package:team_inside/presentation/routes/router.gr.dart';

class RegistrationInsertUsernameForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        if (!state.isValidationRequested) {
          return;
        }
        (state as InsertUsername).authFailureOrSuccessOption.fold(
              () {},
              (either) => either.fold(
                (failure) => {
                  if (!state.isSubmitting)
                    {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return RegistrationInsertUsernameAuthFailureAlertDialog(
                            failure: failure,
                          );
                        },
                      ),
                    }
                },
                (_) => {
                  context.router.replace(
                    const TeamsFrameworkPageRoute(),
                  )
                },
              ),
            );
        state.valueFailureOrValidityOption.fold(
          (failure) {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return RegistrationInsertUsernameValueFailureAlertDialog(
                  failure: failure,
                );
              },
            );
          },
          (_) {
            if (!state.isSubmitting) {
              context.read<RegistrationBloc>().add(
                    const RegistrationEvent.registerValidated(),
                  );
            }
          },
        );
      },
      builder: (context, state) {
        return ListView(
          children: [
            const RegistrationInsertUsernameReturnButton(height: 64),
            const RegistrationInsertUsernameLogo(),
            const SizedBox(height: 32),
            const RegistrationInsertUsernameInstructionText(),
            const SizedBox(height: 8),
            const RegistrationInsertUsernameUsernameFormField(),
            const SizedBox(height: 32),
            RegistrationInsertUsernameRegisterButton(
              isSubmitting: (state as InsertUsername).isSubmitting,
            ),
          ],
        );
      },
    );
  }
}
