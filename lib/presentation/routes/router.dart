import 'package:auto_route/auto_route.dart';
import 'package:team_inside/presentation/auth/password_reset/password_reset_page.dart';
import 'package:team_inside/presentation/auth/registration/registration_page.dart';
import 'package:team_inside/presentation/auth/sign_in/sign_in_page.dart';
import 'package:team_inside/presentation/presentation_config.dart' as config;
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
      durationInMilliseconds: config.kdurationInMillisecondsForTransition,
    ),
    AutoRoute(page: RegistrationPage),
    CustomRoute(
      name: 'RegistrationSlideLeftPageRoute',
      page: RegistrationPage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: config.kdurationInMillisecondsForTransition,
    ),
    AutoRoute(page: PasswordResetPage),
    CustomRoute(
      name: 'PasswordResetSlideLeftPageRoute',
      page: PasswordResetPage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: config.kdurationInMillisecondsForTransition,
    ),
    AutoRoute(page: TeamsFrameworkPage),
    CustomRoute(
      name: 'TeamsFrameworkSlideLeftPageRoute',
      page: TeamsFrameworkPage,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: config.kdurationInMillisecondsForTransition,
    ),
  ],
)
class $Router {}
