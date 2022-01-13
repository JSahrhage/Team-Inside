import 'package:flutter/material.dart';
import 'package:team_inside/application/localization/app_localizations.dart';

class CoreSuccessAlertDialog extends StatelessWidget {
  const CoreSuccessAlertDialog({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        AppLocalizations.of(context)!.translate('success')!,
        textAlign: TextAlign.center,
      ),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: Theme.of(context).colorScheme.onError,
        fontSize: 20,
      ),
      backgroundColor: Theme.of(context).indicatorColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      content: Text(
        AppLocalizations.of(context)!.translate(text)!,
        textAlign: TextAlign.center,
      ),
    );
  }
}
