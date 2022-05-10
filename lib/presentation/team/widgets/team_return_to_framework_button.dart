import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_return_button.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class TeamReturnToFrameworkButton extends StatelessWidget {
  const TeamReturnToFrameworkButton({
    Key? key,
    required this.callback,
    required this.height,
  }) : super(key: key);

  final VoidCallback callback;
  final double height;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      height: height,
      child: CoreReturnButton(
        callback: callback,
      ),
    );
  }
}
