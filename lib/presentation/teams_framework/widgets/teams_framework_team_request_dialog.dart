import 'package:flutter/material.dart';
import 'package:team_inside/application/localization/app_localizations.dart';

class TeamsFrameworkTeamRequestDialog extends StatelessWidget {
  const TeamsFrameworkTeamRequestDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        width: 256,
        height: 128,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  true,
                );
              },
              child: Text(
                AppLocalizations.of(context)!.translate(
                  'accept_request',
                )!,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  false,
                );
              },
              child: Text(
                AppLocalizations.of(context)!.translate(
                  'decline_request',
                )!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
