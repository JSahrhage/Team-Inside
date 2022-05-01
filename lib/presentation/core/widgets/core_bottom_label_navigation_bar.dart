import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:team_inside/application/localization/app_localizations.dart';

class CoreBottomLabelNavigationBar extends StatelessWidget {
  const CoreBottomLabelNavigationBar({
    Key? key,
    required this.callback,
    required this.items,
    required this.selectedIndex,
  }) : super(key: key);

  final void Function(int) callback;
  final List<Tuple2<Icon, String>> items;
  final int selectedIndex;

  List<BottomNavigationBarItem> _createBottomNaviationBarItems(
    BuildContext context,
  ) {
    final List<BottomNavigationBarItem> bottomNavigationBarItems = [];
    for (final item in items) {
      final BottomNavigationBarItem bottomNavigationBarItem =
          BottomNavigationBarItem(
        icon: item.value1,
        label: AppLocalizations.of(context)!.translate(
          item.value2,
        ),
      );
      bottomNavigationBarItems.add(bottomNavigationBarItem);
    }
    return bottomNavigationBarItems;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(color: Color.fromARGB(128, 255, 255, 255), blurRadius: 10),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          unselectedItemColor: Theme.of(context).colorScheme.onSecondary,
          items: _createBottomNaviationBarItems(context),
          currentIndex: selectedIndex,
          onTap: callback,
          selectedItemColor: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
