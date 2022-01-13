import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/sign_in/sign_in_bloc.dart';
import 'package:team_inside/presentation/core/widgets/core_elevated_button.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class SignInSignInButton extends StatelessWidget {
  const SignInSignInButton({
    Key? key,
    required this.isSubmitting,
  }) : super(key: key);

  final bool isSubmitting;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CoreElevatedButton(
        callback: () {
          context.read<SignInBloc>().add(
                const SignInEvent.signInWithEmailAndPasswordPressed(),
              );
        },
        text: 'sign_in',
        isSubmitting: isSubmitting,
      ),
    );
  }
}
