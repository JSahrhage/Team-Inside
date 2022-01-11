import 'package:auto_route/annotations.dart';
import 'package:team_inside/presentation/auth/password_reset/password_reset_page.dart';
import 'package:team_inside/presentation/auth/registration/registration_page.dart';
import 'package:team_inside/presentation/auth/sign_in/sign_in_page.dart';
import 'package:team_inside/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: RegistrationPage),
    AutoRoute(page: PasswordResetPage),
  ],
)
class $Router {}
