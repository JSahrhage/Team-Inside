import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_return_button.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';
import 'package:team_inside/presentation/routes/router.gr.dart';

class PasswordResetReturnButton extends StatelessWidget {
  const PasswordResetReturnButton({
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
          context.router.replace(
            const SignInPageRoute(),
          );
        },
      ),
    );
  }
}
