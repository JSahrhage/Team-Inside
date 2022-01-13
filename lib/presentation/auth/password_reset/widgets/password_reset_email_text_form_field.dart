import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/password_reset/password_reset_bloc.dart';
import 'package:team_inside/presentation/core/widgets/core_email_form_field.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class PasswordResetEmailTextFormField extends StatelessWidget {
  const PasswordResetEmailTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CoreEmailFormField(
        callback: (value) {
          context
              .read<PasswordResetBloc>()
              .add(PasswordResetEvent.emailChanged(value));
        },
      ),
    );
  }
}
