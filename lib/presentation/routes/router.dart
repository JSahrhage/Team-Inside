import 'package:auto_route/auto_route.dart';
import 'package:team_inside/presentation/auth/password_reset/password_reset_page.dart';
import 'package:team_inside/presentation/auth/registration/registration_page.dart';
import 'package:team_inside/presentation/auth/sign_in/sign_in_page.dart';
import 'package:team_inside/presentation/splash/splash_page.dart';
import 'package:team_inside/presentation/teams_framework/teams_framework_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    CustomRoute(
      name: 'SignInSlideRightPageRoute',
      page: SignInPage,
      transitionsBuilder: TransitionsBuilders.slideRight,
      durationInMilliseconds: 100,
    ),
    AutoRoute(page: RegistrationPage),
    AutoRoute(page: PasswordResetPage),
    AutoRoute(page: TeamsFrameworkPage),
  ],
)
class $Router {}
