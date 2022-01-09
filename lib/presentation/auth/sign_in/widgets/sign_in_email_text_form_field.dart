import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:team_inside/application/localization/app_localizations.dart';

class SignInEmailTextFormField extends StatelessWidget {
  const SignInEmailTextFormField({Key? key, required this.fieldHeight})
      : super(key: key);

  final double fieldHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: SizedBox(
        height: fieldHeight,
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
    );
  }
}
