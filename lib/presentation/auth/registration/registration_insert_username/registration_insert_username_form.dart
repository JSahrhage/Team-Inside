import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_username/widgets/registration_insert_username_logo.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_username/widgets/registration_insert_username_register_button.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_username/widgets/registration_insert_username_return_button.dart';

class RegistrationInsertUsernameForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const double _fieldHeight = 48;
    return BlocConsumer<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        (state as InsertUsername).valueFailureOrValidityOption.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  // TODO: Show FailureDialog
                },
                (_) {
                  state.authFailureOrSuccessOption.fold(
                    () {},
                    (either) => either.fold(
                      (failure) => {
                        // TODO: Show FailureDialog
                      },
                      (_) => {
                        // TODO: Navigate
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
              fieldHeight: _fieldHeight,
              isSubmitting: (state as InsertUsername).isSubmitting,
            ),
          ],
        );
      },
    );
  }
}
