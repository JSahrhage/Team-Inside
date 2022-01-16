import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_password_form_field.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class RegistrationInsertPasswordPasswordFormField extends StatelessWidget {
  const RegistrationInsertPasswordPasswordFormField({
    Key? key,
    required this.formFieldCallback,
    required this.iconButtonCallback,
    required this.isPasswordVisible,
    required this.initialValue,
  }) : super(key: key);

  final void Function(String) formFieldCallback;
  final VoidCallback iconButtonCallback;
  final bool isPasswordVisible;
  final String initialValue;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CorePasswordFormField(
        formFieldCallback: formFieldCallback,
        iconButtonCallback: iconButtonCallback,
        isPasswordVisible: isPasswordVisible,
        initialValue: initialValue,
      ),
    );
  }
}
