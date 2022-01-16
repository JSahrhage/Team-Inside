import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_routing_return_button.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class RegistrationInsertEmailReturnButton extends StatelessWidget {
  const RegistrationInsertEmailReturnButton({
    Key? key,
    required this.callback,
    required this.height,
  }) : super(key: key);

  final Null Function() callback;
  final double height;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      height: height,
      child: Align(
        alignment: Alignment.centerLeft,
        child: CoreRoutingReturnButton(
          callback: callback,
        ),
      ),
    );
  }
}
