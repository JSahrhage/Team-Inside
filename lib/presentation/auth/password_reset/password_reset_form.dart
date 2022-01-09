import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/password_reset/password_reset_bloc.dart';
import 'package:team_inside/presentation/auth/password_reset/widgets/password_reset_logo.dart';
import 'package:team_inside/presentation/auth/password_reset/widgets/password_reset_return_icon_button.dart';

class PasswordResetForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordResetBloc, PasswordResetState>(
      builder: (context, state) {
        return ListView(
          children: const [
            PasswordResetReturnIconButton(height: 64),
            PasswordResetLogo(),
          ],
        );
      },
    );
  }
}
