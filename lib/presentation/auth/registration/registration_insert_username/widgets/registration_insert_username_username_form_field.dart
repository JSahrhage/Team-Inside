import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';
import 'package:team_inside/presentation/core/widgets/core_username_form_field.dart';

class RegistrationInsertUsernameUsernameFormField extends StatelessWidget {
  const RegistrationInsertUsernameUsernameFormField({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CoreUsernameFormField(
        callback: (value) {
          context
              .read<RegistrationBloc>()
              .add(RegistrationEvent.usernameChanged(value));
        },
        initialValue: context
            .read<RegistrationBloc>()
            .state
            .username
            .value
            .getOrElse(() => ''),
      ),
    );
  }
}
