import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_password/widgets/registration_insert_password_continue_button.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_password/widgets/registration_insert_password_failure_alert_dialog.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_password/widgets/registration_insert_password_logo.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_password/widgets/registration_insert_password_return_button.dart';

class RegistrationInsertPasswordForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegistrationBloc, RegistrationState>(
      listenWhen: (previous, current) {
        return current.isValidationRequested;
      },
      listener: (context, state) {
        (state as InsertPassword).valueFailureOrValidityOption.fold(
              () {},
              (either) => either.fold(
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
              ),
            );
      },
      builder: (context, state) {
        return ListView(
          children: const [
            RegistrationInsertPasswordReturnButton(height: 64),
            RegistrationInsertPasswordLogo(),
            RegistrationInsertPasswordContinueButton(),
          ],
        );
      },
    );
  }
}
