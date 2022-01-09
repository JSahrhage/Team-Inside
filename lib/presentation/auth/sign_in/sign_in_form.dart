import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:team_inside/presentation/auth/sign_in/widgets/sign_in_email_text_form_field.dart';
import 'package:team_inside/presentation/auth/sign_in/widgets/sign_in_failure_alert_dialog.dart';
import 'package:team_inside/presentation/auth/sign_in/widgets/sign_in_logo.dart';
import 'package:team_inside/presentation/auth/sign_in/widgets/sign_in_password_forgotten_rich_text.dart';
import 'package:team_inside/presentation/auth/sign_in/widgets/sign_in_password_text_form_field.dart';
import 'package:team_inside/presentation/auth/sign_in/widgets/sign_in_register_text_button.dart';
import 'package:team_inside/presentation/auth/sign_in/widgets/sign_in_sign_in_elevated_button.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const double _fieldHeight = 48;
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return SignInFailureAlertDialog(failure: failure);
                },
              );
            },
            (_) {
              // TODO: Navigate
            },
          ),
        );
      },
      builder: (context, state) {
        return ListView(
          children: [
            const SizedBox(height: 64),
            const SignInLogo(),
            const SizedBox(height: 32),
            const SignInEmailTextFormField(fieldHeight: _fieldHeight),
            const SizedBox(height: 8),
            SignInPasswordTextFormField(
              fieldHeight: _fieldHeight,
              isPasswordVisible: state.isPasswordVisible,
            ),
            const SizedBox(height: 16),
            const SignInPasswordForgottenRichText(),
            const SizedBox(height: 24),
            SignInSignInElevatedButton(
              fieldHeight: _fieldHeight,
              isSubmitting: state.isSubmitting,
            ),
            const SizedBox(height: 24),
            const SignInRegisterTextButton(fieldHeight: _fieldHeight),
          ],
        );
      },
    );
  }
}
