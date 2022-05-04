import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:team_inside/application/localization/app_localizations.dart';

class CoreSelectImageDialog extends StatelessWidget {
  CoreSelectImageDialog({
    Key? key,
  }) : super(key: key);

  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        width: 256,
        height: 64,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                try {
                  await _picker
                      .pickImage(
                    source: ImageSource.gallery,
                  )
                      .then((value) {
                    Navigator.pop(
                      context,
                      right(value),
                    );
                  });
                } catch (e) {
                  Navigator.pop(context, left(e));
                }
              },
              child: Text(
                AppLocalizations.of(context)!.translate(
                  'select_photo',
                )!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
