import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';
import 'package:team_inside/presentation/routes/router.gr.dart';

class RegistrationInsertEmailReturnButton extends StatelessWidget {
  const RegistrationInsertEmailReturnButton({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      height: height,
      child: Align(
        alignment: Alignment.centerLeft,
        child: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).colorScheme.onBackground,
          ),
          onPressed: () {
            context.router.replace(
              const SignInPageRoute(),
            );
          },
        ),
      ),
    );
  }
}
