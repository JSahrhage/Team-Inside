import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_email_form_field.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class SignInEmailTextFormField extends StatelessWidget {
  const SignInEmailTextFormField({
    Key? key,
    required this.callback,
  }) : super(key: key);

  final void Function(String) callback;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CoreEmailFormField(
        callback: callback,
      ),
    );
  }
}
