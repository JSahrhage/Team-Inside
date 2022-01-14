import 'package:flutter/material.dart';
import 'package:team_inside/application/localization/app_localizations.dart';

class CoreUsernameFormField extends StatelessWidget {
  const CoreUsernameFormField({
    Key? key,
    required this.callback,
    this.initialValue,
  }) : super(key: key);

  final void Function(String) callback;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
          'username',
        ),
      ),
      onChanged: (value) => callback(value),
      initialValue: initialValue ?? '',
      autocorrect: false,
    );
  }
}
