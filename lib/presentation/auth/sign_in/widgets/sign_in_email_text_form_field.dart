import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/sign_in/sign_in_bloc.dart';
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
          style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
          decoration: InputDecoration(
            filled: true,
            fillColor: Theme.of(context).colorScheme.secondaryVariant,
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
          onChanged: (value) =>
              context.read<SignInBloc>().add(SignInEvent.emailChanged(value)),
          autocorrect: false,
        ),
      ),
    );
  }
}
