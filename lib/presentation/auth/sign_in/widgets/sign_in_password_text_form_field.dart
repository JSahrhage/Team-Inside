import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:team_inside/application/localization/app_localizations.dart';

class SignInPasswordTextFormField extends StatelessWidget {
  const SignInPasswordTextFormField({
    Key? key,
    required this.fieldHeight,
    required this.isPasswordVisible,
  }) : super(key: key);

  final double fieldHeight;
  final bool isPasswordVisible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: SizedBox(
        height: fieldHeight,
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
              obscureText: !isPasswordVisible,
            ),
            IconButton(
              icon: isPasswordVisible
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
              color: isPasswordVisible
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).hintColor,
              onPressed: () {
                context.read<SignInFormBloc>().add(
                      const SignInFormEvent.passwordVisibilityIconPressed(),
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}
