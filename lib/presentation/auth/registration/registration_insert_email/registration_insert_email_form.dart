import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_email/widgets/registration_insert_email_continue_button.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_email/widgets/registration_insert_email_failure_alert_dialog.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_email/widgets/registration_insert_email_logo.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_email/widgets/registration_insert_email_return_button.dart';

class RegistrationInsertEmailForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        state.valueFailureOrValidityOption.fold(
          () {},
          (either) => either.fold(
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
          ),
        );
      },
      builder: (context, state) {
        return ListView(
          children: const [
            RegistrationInsertEmailReturnButton(height: 64),
            RegistrationInsertEmailLogo(),
            RegistrationInsertEmailContinueButton(),
          ],
        );
      },
    );
  }
}
