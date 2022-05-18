import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_checkbox_row.dart';

class UserRightsCheckboxRow extends StatelessWidget {
  const UserRightsCheckboxRow({
    Key? key,
    required this.callback,
    required this.text,
    required this.value,
  }) : super(key: key);

  final Function(bool?) callback;
  final String text;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return CoreCheckboxRow(
      callback: callback,
      text: text,
      value: value,
    );
  }
}
