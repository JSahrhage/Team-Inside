import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';
import 'package:team_inside/presentation/core/widgets/core_return_button.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class RegistrationInsertUsernameReturnButton extends StatelessWidget {
  const RegistrationInsertUsernameReturnButton({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      height: height,
      child: CoreReturnButton(
        callback: () {
          context.read<RegistrationBloc>().add(
                const RegistrationEvent
                    .returnFromUsernameInsertionPagePressed(),
              );
        },
      ),
    );
  }
}
