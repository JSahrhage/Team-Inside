import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:team_inside/application/localization/app_localizations.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        final double _width = MediaQuery.of(context).size.width;
        AutovalidateMode _autovalidateMode;
        if (state.showErrorMessages) {
          _autovalidateMode = AutovalidateMode.onUserInteraction;
        } else {
          _autovalidateMode = AutovalidateMode.disabled;
        }
        return Form(
          autovalidateMode: _autovalidateMode,
          child: ListView(
            children: [
              const SizedBox(height: 16),
              Image.asset(
                'assets/images/logo.png',
                width: _width,
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    labelText: AppLocalizations.of(context)!.translate(
                      'email',
                    ),
                  ),
                  autocorrect: false,
                  onChanged: (value) => context.read<SignInFormBloc>().add(
                        SignInFormEvent.emailAddressChanged(value),
                      ),
                  validator: (_) => context
                      .read<SignInFormBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          invalidEmail: (_) => 'Invalid Email',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(255, 18, 18, 18),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintStyle: const TextStyle(),
                    labelText: AppLocalizations.of(context)!.translate(
                      'password',
                    ),
                    suffixIcon: const Icon(Icons.visibility),
                  ),
                  autocorrect: false,
                  obscureText: true,
                  onChanged: (value) => context
                      .read<SignInFormBloc>()
                      .add(SignInFormEvent.passwordChanged(value)),
                  validator: (_) =>
                      context.read<SignInFormBloc>().state.password.value.fold(
                            (f) => f.maybeMap(
                              unsecurePassword: (_) => 'Unsecure Password',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        context.read<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .signInWithEmailAndPasswordPressed(),
                            );
                      },
                      child: const Text('SIGN IN'),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        // TODO: Navigate
                      },
                      child: const Text('REGISTER'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
