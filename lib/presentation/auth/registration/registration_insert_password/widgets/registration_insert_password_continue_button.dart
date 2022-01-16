import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';
import 'package:team_inside/presentation/core/widgets/core_elevated_button.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class RegistrationInsertPasswordContinueButton extends StatelessWidget {
  const RegistrationInsertPasswordContinueButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CoreElevatedButton(
        callback: () {
          context.read<RegistrationBloc>().add(
                const RegistrationEvent.validationRequested(),
              );
        },
        text: 'continue',
      ),
    );
  }
}
