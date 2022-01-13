import 'package:flutter/material.dart';
import 'package:team_inside/application/localization/app_localizations.dart';

class CorePasswordFormField extends StatelessWidget {
  const CorePasswordFormField({
    Key? key,
    required this.formFieldCallback,
    required this.iconButtonCallback,
    required this.isPasswordVisible,
  }) : super(key: key);

  final void Function(String) formFieldCallback;
  final VoidCallback iconButtonCallback;
  final bool isPasswordVisible;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        TextFormField(
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
              'password',
            ),
          ),
          onChanged: (value) => formFieldCallback(value),
          autocorrect: false,
          obscureText: !isPasswordVisible,
        ),
        IconButton(
          icon: isPasswordVisible
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
          color: isPasswordVisible
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.onSecondary,
          onPressed: iconButtonCallback,
        ),
      ],
    );
  }
}
