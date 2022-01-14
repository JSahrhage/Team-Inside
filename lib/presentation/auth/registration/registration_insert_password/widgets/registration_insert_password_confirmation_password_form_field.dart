import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';
import 'package:team_inside/presentation/core/widgets/core_password_form_field.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class RegistrationInsertPasswordConfirmationPasswordFormField
    extends StatelessWidget {
  const RegistrationInsertPasswordConfirmationPasswordFormField({
    Key? key,
    required this.isConfirmationPasswordVisible,
  }) : super(key: key);

  final bool isConfirmationPasswordVisible;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CorePasswordFormField(
        formFieldCallback: (value) {
          context
              .read<RegistrationBloc>()
              .add(RegistrationEvent.confirmationPasswordChanged(value));
        },
        iconButtonCallback: () {
          context.read<RegistrationBloc>().add(
                const RegistrationEvent
                    .confirmationPasswordVisibilityIconPressed(),
              );
        },
        isPasswordVisible: isConfirmationPasswordVisible,
        initialValue: context
            .read<RegistrationBloc>()
            .state
            .confirmationPassword
            .value
            .getOrElse(() => ''),
      ),
    );
  }
}
