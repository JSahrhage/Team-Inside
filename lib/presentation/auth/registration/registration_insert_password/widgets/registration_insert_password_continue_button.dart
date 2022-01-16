import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';
import 'package:team_inside/presentation/core/widgets/core_elevated_button.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class RegistrationInsertPasswordContinueButton extends StatelessWidget {
  const RegistrationInsertPasswordContinueButton({
    Key? key,
    required this.callback,
  }) : super(key: key);

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CoreElevatedButton(
        callback: callback,
        text: 'continue',
      ),
    );
  }
}
