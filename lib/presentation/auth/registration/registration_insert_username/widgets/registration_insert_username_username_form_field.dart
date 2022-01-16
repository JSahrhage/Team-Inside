import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';
import 'package:team_inside/presentation/core/widgets/core_username_form_field.dart';

class RegistrationInsertUsernameUsernameFormField extends StatelessWidget {
  const RegistrationInsertUsernameUsernameFormField({
    Key? key,
    required this.callback,
    required this.initialValue,
  }) : super(key: key);

  final void Function(String) callback;
  final String initialValue;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CoreUsernameFormField(
        callback: callback,
        initialValue: initialValue,
      ),
    );
  }
}
