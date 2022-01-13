import 'package:flutter/material.dart';

class CoreReturnButton extends StatelessWidget {
  const CoreReturnButton({
    Key? key,
    required this.callback,
  }) : super(key: key);

  final VoidCallback callback;

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
