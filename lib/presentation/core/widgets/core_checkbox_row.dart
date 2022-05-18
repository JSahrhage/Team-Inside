import 'package:flutter/material.dart';
import 'package:team_inside/application/localization/app_localizations.dart';
import 'package:team_inside/presentation/presentation_config.dart' as config;

class CoreCheckboxRow extends StatelessWidget {
  const CoreCheckboxRow({
    Key? key,
    required this.callback,
    required this.text,
    required this.value,
  }) : super(key: key);

  final Function(bool?) callback;
  final String text;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Text(
              AppLocalizations.of(context)!.translate(
                text,
              )!,
              style: const TextStyle(fontSize: config.kCheckboxRowFontSize),
            ),
          ),
        ),
        Checkbox(
          value: value,
          onChanged: callback,
          activeColor: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(
          width: 16,
        )
      ],
    );
  }
}
