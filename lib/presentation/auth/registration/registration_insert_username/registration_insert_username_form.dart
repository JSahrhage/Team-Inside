import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_username/widgets/registration_insert_username_auth_failure_alert_dialog.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_username/widgets/registration_insert_username_logo.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_username/widgets/registration_insert_username_register_button.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_username/widgets/registration_insert_username_return_button.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_username/widgets/registration_insert_username_value_failure_alert_dialog.dart';

class RegistrationInsertUsernameForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        (state as InsertUsername).valueFailureOrValidityOption.fold(
              () {},
              (either) => either.fold(
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
                  state.authFailureOrSuccessOption.fold(
                    () {},
                    (either) => either.fold(
                      (failure) => {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return RegistrationInsertUsernameAuthFailureAlertDialog(
                              failure: failure,
                            );
                          },
                        ),
                      },
                      (_) => {
                        // TODO: Register and Navigate
                      },
                    ),
                  );
                },
              ),
            );
      },
      builder: (context, state) {
        return ListView(
          children: [
            const RegistrationInsertUsernameReturnButton(height: 64),
            const RegistrationInsertUsernameLogo(),
            RegistrationInsertUsernameRegisterButton(
              isSubmitting: (state as InsertUsername).isSubmitting,
            ),
          ],
        );
      },
    );
  }
}
