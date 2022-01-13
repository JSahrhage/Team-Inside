import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/sign_in/sign_in_bloc.dart';
import 'package:team_inside/presentation/core/widgets/core_password_form_field.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class SignInPasswordTextFormField extends StatelessWidget {
  const SignInPasswordTextFormField({
    Key? key,
    required this.isPasswordVisible,
  }) : super(key: key);

  final bool isPasswordVisible;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CorePasswordFormField(
        formFieldCallback: (value) {
          context.read<SignInBloc>().add(SignInEvent.passwordChanged(value));
        },
        iconButtonCallback: () {
          context.read<SignInBloc>().add(
                const SignInEvent.passwordVisibilityIconPressed(),
              );
        },
        isPasswordVisible: isPasswordVisible,
      ),
    );
  }
}
