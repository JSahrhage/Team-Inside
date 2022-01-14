import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';
import 'package:team_inside/presentation/core/widgets/core_email_form_field.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class RegistrationInsertEmailEmailFormField extends StatelessWidget {
  const RegistrationInsertEmailEmailFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CoreEmailFormField(
        callback: (value) {
          context
              .read<RegistrationBloc>()
              .add(RegistrationEvent.emailChanged(value));
        },
        initialValue: context
            .read<RegistrationBloc>()
            .state
            .emailAddress
            .value
            .getOrElse(() => ''),
      ),
    );
  }
}
