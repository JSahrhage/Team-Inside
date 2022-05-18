import 'package:flutter/material.dart';
import 'package:team_inside/application/localization/app_localizations.dart';
import 'package:team_inside/domain/auth/value_objects.dart';

class TeamsFrameworkChangeUsernameDialog extends StatelessWidget {
  TeamsFrameworkChangeUsernameDialog({
    Key? key,
  }) : super(key: key);

  final _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        width: 256,
        height: 128,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
            ),
            TextButton(
              onPressed: () async {
                final username = Username(_usernameController.text);
                username.value.fold(
                  (failure) {
                    Navigator.pop(
                      context,
                    );
                  },
                  (success) {
                    Navigator.pop(
                      context,
                      success,
                    );
                  },
                );
              },
              child: Text(
                AppLocalizations.of(context)!.translate(
                  'change_username',
                )!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
