import 'package:flutter/material.dart';
import 'package:team_inside/application/localization/app_localizations.dart';

class CoreElevatedButton extends StatelessWidget {
  const CoreElevatedButton({
    Key? key,
    required this.callback,
    required this.text,
    this.isSubmitting,
  }) : super(key: key);

  final VoidCallback callback;
  final String text;
  final bool? isSubmitting;

  @override
  Widget build(BuildContext context) {
    if (isSubmitting == null) {
      return ElevatedButton(
        onPressed: callback,
        child: Text(
          AppLocalizations.of(context)!.translate(
            text,
          )!,
        ),
      );
    }
    return ElevatedButton(
      onPressed: callback,
      child: isSubmitting!
          ? const CircularProgressIndicator.adaptive()
          : Text(
              AppLocalizations.of(context)!.translate(
                text,
              )!,
            ),
    );
  }
}
