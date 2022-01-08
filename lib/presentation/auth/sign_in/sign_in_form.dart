import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:team_inside/application/localization/app_localizations.dart';

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
                  return AlertDialog(
                    title: Text(
                      AppLocalizations.of(context)!.translate('failure')!,
                      textAlign: TextAlign.center,
                    ),
                    titleTextStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    backgroundColor: Colors.redAccent,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    content: Text(
                      failure.map(
                        cancelledByUser: (_) => AppLocalizations.of(context)!
                            .translate('cancelled_by_user')!,
                        serverError: (_) => AppLocalizations.of(context)!
                            .translate('server_error')!,
                        emailAlreadyInUse: (_) => AppLocalizations.of(context)!
                            .translate('email_already_in_use')!,
                        invalidEmailAndPasswordCombination: (_) =>
                            AppLocalizations.of(context)!.translate(
                          'invalid_email_and_password_combination',
                        )!,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
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
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              child: Image.asset(
                'assets/images/logo_small.png',
              ),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: SizedBox(
                height: _fieldHeight,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Theme.of(context).shadowColor,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    labelStyle: TextStyle(
                      color: Theme.of(context).hintColor,
                      fontSize: 14,
                    ),
                    labelText: AppLocalizations.of(context)!.translate(
                      'email',
                    ),
                  ),
                  onChanged: (value) => context
                      .read<SignInFormBloc>()
                      .add(SignInFormEvent.emailChanged(value)),
                  autocorrect: false,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: SizedBox(
                height: _fieldHeight,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Theme.of(context).shadowColor,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        labelStyle: TextStyle(
                          color: Theme.of(context).hintColor,
                          fontSize: 14,
                        ),
                        labelText: AppLocalizations.of(context)!.translate(
                          'password',
                        ),
                      ),
                      onChanged: (value) => context
                          .read<SignInFormBloc>()
                          .add(SignInFormEvent.passwordChanged(value)),
                      autocorrect: false,
                      obscureText: !state.isPasswordVisible,
                    ),
                    IconButton(
                      icon: state.isPasswordVisible
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                      color: state.isPasswordVisible
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).hintColor,
                      onPressed: () {
                        context.read<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .passwordVisibilityIconPressed(),
                            );
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
              child: RichText(
                textAlign: TextAlign.end,
                textScaleFactor: 0.8,
                text: TextSpan(
                  text: AppLocalizations.of(context)!.translate(
                    'password_forgotten',
                  ),
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // TODO: Implement PasswordForgotten
                    },
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: SizedBox(
                height: _fieldHeight,
                child: ElevatedButton(
                  onPressed: () {
                    context.read<SignInFormBloc>().add(
                          const SignInFormEvent
                              .signInWithEmailAndPasswordPressed(),
                        );
                  },
                  child: state.isSubmitting
                      ? const CircularProgressIndicator()
                      : Text(
                          AppLocalizations.of(context)!.translate(
                            'sign_in',
                          )!,
                        ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            TextButton(
              onPressed: () {
                // TODO: Navigate
              },
              child: Text(
                AppLocalizations.of(context)!.translate(
                  'register',
                )!,
              ),
            ),
          ],
        );
      },
    );
  }
}
