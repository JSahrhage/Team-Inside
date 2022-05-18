import 'package:flutter/material.dart';
import 'package:team_inside/application/localization/app_localizations.dart';
import 'package:team_inside/presentation/presentation_config.dart' as config;

class CoreTextButton extends StatelessWidget {
  const CoreTextButton({
    Key? key,
    required this.callback,
    required this.text,
    this.fontSize,
  }) : super(key: key);

  final VoidCallback callback;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callback,
      child: Text(
        AppLocalizations.of(context)!.translate(
          text,
        )!,
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontSize: fontSize ?? config.kTextButtonFontSize,
        ),
      ),
    );
  }
}
