import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_email_form_field.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class RegistrationInsertEmailEmailFormField extends StatelessWidget {
  const RegistrationInsertEmailEmailFormField({
    Key? key,
    required this.callback,
    required this.initialValue,
  }) : super(key: key);

  final void Function(String) callback;
  final String initialValue;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CoreEmailFormField(
        callback: callback,
        initialValue: initialValue,
      ),
    );
  }
}
