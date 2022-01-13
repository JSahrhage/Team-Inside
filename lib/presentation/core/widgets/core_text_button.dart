import 'package:flutter/material.dart';
import 'package:team_inside/application/localization/app_localizations.dart';

class CoreTextButton extends StatelessWidget {
  const CoreTextButton({
    Key? key,
    required this.callback,
    required this.text,
  }) : super(key: key);

  final VoidCallback callback;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callback,
      child: Text(
        AppLocalizations.of(context)!.translate(
          text,
        )!,
        style: TextStyle(color: Theme.of(context).colorScheme.primary),
      ),
    );
  }
}
