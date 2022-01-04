import 'package:auto_route/annotations.dart';
import 'package:team_inside/presentation/sign_in/sign_in_page.dart';
import 'package:team_inside/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
  ],
)
class $Router {}
