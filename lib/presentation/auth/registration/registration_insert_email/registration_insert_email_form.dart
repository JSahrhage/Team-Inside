import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';

class RegistrationInsertEmailForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const double _fieldHeight = 48;
    return BlocConsumer<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        (state as InsertEmail).valueFailureOrValidityOption.fold(
              () {},
              (either) => either.fold(
                (failure) {},
                (_) {
                  // TODO: Navigate
                },
              ),
            );
      },
      builder: (context, state) {
        return ListView(
          children: const [
            SizedBox(height: 64),
          ],
        );
      },
    );
  }
}
