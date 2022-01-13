import 'package:flutter/material.dart';

class RegistrationInsertPasswordLogo extends StatelessWidget {
  const RegistrationInsertPasswordLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      child: Image.asset(
        'assets/images/logo_small.png',
      ),
    );
  }
}
