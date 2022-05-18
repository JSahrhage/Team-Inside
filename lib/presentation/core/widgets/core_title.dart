import 'package:flutter/material.dart';
import 'package:team_inside/application/localization/app_localizations.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';
import 'package:team_inside/presentation/presentation_config.dart' as config;

class CoreTitle extends StatelessWidget {
  const CoreTitle({
    Key? key,
    required this.text,
    this.fontSize,
  }) : super(key: key);

  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: Center(
        child: Text(
          AppLocalizations.of(context)!.translate(
            text,
          )!,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: fontSize ?? config.kTitleFontSize,
          ),
        ),
      ),
    );
  }
}
