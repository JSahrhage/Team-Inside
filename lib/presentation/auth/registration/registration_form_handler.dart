import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';
import 'package:team_inside/presentation/splash/splash_page.dart';

class RegistrationFormHandler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const double _fieldHeight = 48;
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      builder: (context, state) {
        switch (RegistrationState) {
          case Initial:
            return SplashPage();
          case InsertEmail:
            // do something else
            break;
          case InsertPassword:
            // do something else
            break;
          case InsertUsername:
            // do something else
            break;
          default:
            return SplashPage();
        }
        return Container();
      },
    );
  }
}
