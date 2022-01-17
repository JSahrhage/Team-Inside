import 'package:auto_route/auto_route.dart';
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
import 'package:team_inside/presentation/routes/router.gr.dart';

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
              context.router.replace(
                const TeamsFrameworkSlideLeftPageRoute(),
              );
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
            SignInEmailTextFormField(
              callback: (value) {
                context.read<SignInBloc>().add(SignInEvent.emailChanged(value));
              },
            ),
            const SizedBox(height: 8),
            SignInPasswordTextFormField(
              formFieldCallback: (value) {
                context
                    .read<SignInBloc>()
                    .add(SignInEvent.passwordChanged(value));
              },
              iconButtonCallback: () {
                context.read<SignInBloc>().add(
                      const SignInEvent.passwordVisibilityIconPressed(),
                    );
              },
              isPasswordVisible: state.isPasswordVisible,
            ),
            const SizedBox(height: 16),
            SignInPasswordForgottenText(
              callback: () {
                context.router.replace(
                  const PasswordResetSlideLeftPageRoute(),
                );
              },
            ),
            const SizedBox(height: 24),
            SignInSignInButton(
              callback: () {
                context.read<SignInBloc>().add(
                      const SignInEvent.signInWithEmailAndPasswordPressed(),
                    );
              },
              isSubmitting: state.isSubmitting,
            ),
            const SizedBox(height: 24),
            SignInRegisterTextButton(
              callback: () {
                context.router.replace(
                  const RegistrationSlideLeftPageRoute(),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
