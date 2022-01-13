import 'package:flutter/material.dart';
import 'package:team_inside/application/localization/app_localizations.dart';

class CoreEmailFormField extends StatelessWidget {
  const CoreEmailFormField({
    Key? key,
    required this.callback,
  }) : super(key: key);

  final void Function(String) callback;

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
          'email',
        ),
      ),
      onChanged: (value) => callback(value),
      autocorrect: false,
    );
  }
}
