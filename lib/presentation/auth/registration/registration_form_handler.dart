import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_email/registration_insert_email_form.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_password/registration_insert_password_form.dart';
import 'package:team_inside/presentation/auth/registration/registration_insert_username/registration_insert_username_form.dart';
import 'package:team_inside/presentation/splash/splash_page.dart';

class RegistrationFormHandler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      builder: (context, state) {
        if (state is InsertEmail) {
          return RegistrationInsertEmailForm();
        } else if (state is InsertPassword) {
          return RegistrationInsertPasswordForm();
        } else if (state is InsertUsername) {
          return RegistrationInsertUsernameForm();
        }
        return SplashPage();
      },
    );
  }
}
