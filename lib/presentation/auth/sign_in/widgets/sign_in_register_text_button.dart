import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';
import 'package:team_inside/presentation/core/widgets/core_text_button.dart';
import 'package:team_inside/presentation/routes/router.gr.dart';

class SignInRegisterTextButton extends StatelessWidget {
  const SignInRegisterTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      child: CoreTextButton(
        callback: () {
          context.router.replace(
            const RegistrationPageRoute(),
          );
        },
        text: 'register',
      ),
    );
  }
}
