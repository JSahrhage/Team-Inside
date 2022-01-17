import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_password_form_field.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class SignInPasswordTextFormField extends StatelessWidget {
  const SignInPasswordTextFormField({
    Key? key,
    required this.formFieldCallback,
    required this.iconButtonCallback,
    required this.isPasswordVisible,
  }) : super(key: key);

  final void Function(String) formFieldCallback;
  final VoidCallback iconButtonCallback;
  final bool isPasswordVisible;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CorePasswordFormField(
        formFieldCallback: formFieldCallback,
        iconButtonCallback: iconButtonCallback,
        isPasswordVisible: isPasswordVisible,
      ),
    );
  }
}
