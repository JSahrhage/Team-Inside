import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';
import 'package:team_inside/presentation/core/widgets/core_password_form_field.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class RegistrationInsertPasswordPasswordFormField extends StatelessWidget {
  const RegistrationInsertPasswordPasswordFormField({
    Key? key,
    required this.isPasswordVisible,
  }) : super(key: key);

  final bool isPasswordVisible;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CorePasswordFormField(
        formFieldCallback: (value) {
          context
              .read<RegistrationBloc>()
              .add(RegistrationEvent.passwordChanged(value));
        },
        iconButtonCallback: () {
          context.read<RegistrationBloc>().add(
                const RegistrationEvent.passwordVisibilityIconPressed(),
              );
        },
        isPasswordVisible: isPasswordVisible,
        initialValue: context
            .read<RegistrationBloc>()
            .state
            .password
            .value
            .getOrElse(() => ''),
      ),
    );
  }
}
