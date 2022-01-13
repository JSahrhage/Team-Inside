import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/password_reset/password_reset_bloc.dart';
import 'package:team_inside/presentation/core/widgets/core_elevated_button.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class PasswordResetResetPasswordElevatedButton extends StatelessWidget {
  const PasswordResetResetPasswordElevatedButton({
    Key? key,
    required this.isSubmitting,
  }) : super(key: key);

  final bool isSubmitting;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CoreElevatedButton(
        callback: () {
          context.read<PasswordResetBloc>().add(
                const PasswordResetEvent.sendPasswordResetEmailPressed(),
              );
        },
        text: 'send_reset_email',
      ),
    );
  }
}
