import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/sign_in/sign_in_bloc.dart';
import 'package:team_inside/presentation/auth/sign_in/widgets/sign_in_email_text_form_field.dart';
import 'package:team_inside/presentation/auth/sign_in/widgets/sign_in_failure_alert_dialog.dart';
import 'package:team_inside/presentation/auth/sign_in/widgets/sign_in_logo.dart';
import 'package:team_inside/presentation/auth/sign_in/widgets/sign_in_password_forgotten_text.dart';
import 'package:team_inside/presentation/auth/sign_in/widgets/sign_in_password_text_form_field.dart';
import 'package:team_inside/presentation/auth/sign_in/widgets/sign_in_register_text_button.dart';
import 'package:team_inside/presentation/auth/sign_in/widgets/sign_in_sign_in_button.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
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
            const SignInEmailTextFormField(),
            const SizedBox(height: 8),
            SignInPasswordTextFormField(
              isPasswordVisible: state.isPasswordVisible,
            ),
            const SizedBox(height: 16),
            const SignInPasswordForgottenText(),
            const SizedBox(height: 24),
            SignInSignInButton(
              isSubmitting: state.isSubmitting,
            ),
            const SizedBox(height: 24),
            const SignInRegisterTextButton(),
          ],
        );
      },
    );
  }
}
