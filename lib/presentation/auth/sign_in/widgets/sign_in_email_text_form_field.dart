import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/sign_in/sign_in_bloc.dart';
import 'package:team_inside/presentation/core/widgets/core_email_form_field.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class SignInEmailTextFormField extends StatelessWidget {
  const SignInEmailTextFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CoreEmailFormField(
        callback: (value) {
          context.read<SignInBloc>().add(SignInEvent.emailChanged(value));
        },
      ),
    );
  }
}
