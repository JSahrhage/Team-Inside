import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';

class RegistrationInsertUsernameReturnButton extends StatelessWidget {
  const RegistrationInsertUsernameReturnButton({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: SizedBox(
        height: height,
        child: Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            onPressed: () {
              context.read<RegistrationBloc>().add(
                    const RegistrationEvent
                        .returnFromUsernameInsertionPagePressed(),
                  );
            },
          ),
        ),
      ),
    );
  }
}
