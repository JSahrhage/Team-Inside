import 'package:flutter/material.dart';

class CoreRoutingReturnButton extends StatelessWidget {
  const CoreRoutingReturnButton({
    Key? key,
    required this.callback,
  }) : super(key: key);

  final Null Function() callback;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Theme.of(context).colorScheme.onBackground,
        ),
        onPressed: callback,
      ),
    );
  }
}
