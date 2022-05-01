import 'package:flutter/material.dart';

class CoreBottomNavigationBar extends StatelessWidget {
  const CoreBottomNavigationBar({
    Key? key,
    required this.callback,
    required this.items,
    required this.selectedIndex,
  }) : super(key: key);

  final void Function(int) callback;
  final List<Icon> items;
  final int selectedIndex;

  List<BottomNavigationBarItem> _createBottomNaviationBarItems(
    BuildContext context,
  ) {
    final List<BottomNavigationBarItem> bottomNavigationBarItems = [];
    for (final item in items) {
      final BottomNavigationBarItem bottomNavigationBarItem =
          BottomNavigationBarItem(
        icon: item,
        label: '',
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
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}
