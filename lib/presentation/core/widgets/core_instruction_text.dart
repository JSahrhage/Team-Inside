import 'package:flutter/material.dart';
import 'package:team_inside/application/localization/app_localizations.dart';

class CoreInstructionText extends StatelessWidget {
  const CoreInstructionText({
    Key? key,
    required this.text,
    this.textScaleFactor,
  }) : super(key: key);

  final String text;
  final double? textScaleFactor;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      textScaleFactor: textScaleFactor ?? 1.5,
      text: TextSpan(
        text: AppLocalizations.of(context)!.translate(text),
        style: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
    );
  }
}
