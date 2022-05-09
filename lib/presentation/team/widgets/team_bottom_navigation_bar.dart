import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_bottom_label_navigation_bar.dart';

class TeamBottomNavigationBar extends StatelessWidget {
  const TeamBottomNavigationBar({
    Key? key,
    required this.callback,
    required this.selectedIndex,
  }) : super(key: key);

  final void Function(int) callback;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return CoreBottomLabelNavigationBar(
      callback: callback,
      items: const [
        Tuple2(Icon(Icons.group), 'teams'),
        Tuple2(Icon(Icons.group_add), 'requests'),
        Tuple2(Icon(Icons.settings), 'settings')
      ],
      selectedIndex: selectedIndex,
    );
  }
}
