// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../domain/team/team.dart' as _i9;
import '../auth/password_reset/password_reset_page.dart' as _i4;
import '../auth/registration/registration_page.dart' as _i3;
import '../auth/sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../team/team_page.dart' as _i6;
import '../teams_framework/teams_framework_page.dart' as _i5;

class Router extends _i7.RootStackRouter {
  Router([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    SignInSlideRightPageRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.SignInPage(),
          transitionsBuilder: _i7.TransitionsBuilders.slideRight,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    RegistrationPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.RegistrationPage());
    },
    RegistrationSlideLeftPageRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: _i3.RegistrationPage(),
          transitionsBuilder: _i7.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    PasswordResetPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.PasswordResetPage());
    },
    PasswordResetSlideLeftPageRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: _i4.PasswordResetPage(),
          transitionsBuilder: _i7.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    TeamsFrameworkPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.TeamsFrameworkPage());
    },
    TeamsFrameworkSlideLeftPageRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: _i5.TeamsFrameworkPage(),
          transitionsBuilder: _i7.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    TeamsFrameworkSlideRightPageRoute.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: _i5.TeamsFrameworkPage(),
          transitionsBuilder: _i7.TransitionsBuilders.slideRight,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    TeamSlideLeftPageRoute.name: (routeData) {
      final args = routeData.argsAs<TeamSlideLeftPageRouteArgs>();
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: _i6.TeamPage(team: args.team),
          transitionsBuilder: _i7.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(SplashPageRoute.name, path: '/'),
        _i7.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i7.RouteConfig(SignInSlideRightPageRoute.name, path: '/sign-in-page'),
        _i7.RouteConfig(RegistrationPageRoute.name, path: '/registration-page'),
        _i7.RouteConfig(RegistrationSlideLeftPageRoute.name,
            path: '/registration-page'),
        _i7.RouteConfig(PasswordResetPageRoute.name,
            path: '/password-reset-page'),
        _i7.RouteConfig(PasswordResetSlideLeftPageRoute.name,
            path: '/password-reset-page'),
        _i7.RouteConfig(TeamsFrameworkPageRoute.name,
            path: '/teams-framework-page'),
        _i7.RouteConfig(TeamsFrameworkSlideLeftPageRoute.name,
            path: '/teams-framework-page'),
        _i7.RouteConfig(TeamsFrameworkSlideRightPageRoute.name,
            path: '/teams-framework-page'),
        _i7.RouteConfig(TeamSlideLeftPageRoute.name, path: '/team-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i7.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i7.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInSlideRightPageRoute extends _i7.PageRouteInfo<void> {
  const SignInSlideRightPageRoute()
      : super(SignInSlideRightPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInSlideRightPageRoute';
}

/// generated route for
/// [_i3.RegistrationPage]
class RegistrationPageRoute extends _i7.PageRouteInfo<void> {
  const RegistrationPageRoute()
      : super(RegistrationPageRoute.name, path: '/registration-page');

  static const String name = 'RegistrationPageRoute';
}

/// generated route for
/// [_i3.RegistrationPage]
class RegistrationSlideLeftPageRoute extends _i7.PageRouteInfo<void> {
  const RegistrationSlideLeftPageRoute()
      : super(RegistrationSlideLeftPageRoute.name, path: '/registration-page');

  static const String name = 'RegistrationSlideLeftPageRoute';
}

/// generated route for
/// [_i4.PasswordResetPage]
class PasswordResetPageRoute extends _i7.PageRouteInfo<void> {
  const PasswordResetPageRoute()
      : super(PasswordResetPageRoute.name, path: '/password-reset-page');

  static const String name = 'PasswordResetPageRoute';
}

/// generated route for
/// [_i4.PasswordResetPage]
class PasswordResetSlideLeftPageRoute extends _i7.PageRouteInfo<void> {
  const PasswordResetSlideLeftPageRoute()
      : super(PasswordResetSlideLeftPageRoute.name,
            path: '/password-reset-page');

  static const String name = 'PasswordResetSlideLeftPageRoute';
}

/// generated route for
/// [_i5.TeamsFrameworkPage]
class TeamsFrameworkPageRoute extends _i7.PageRouteInfo<void> {
  const TeamsFrameworkPageRoute()
      : super(TeamsFrameworkPageRoute.name, path: '/teams-framework-page');

  static const String name = 'TeamsFrameworkPageRoute';
}

/// generated route for
/// [_i5.TeamsFrameworkPage]
class TeamsFrameworkSlideLeftPageRoute extends _i7.PageRouteInfo<void> {
  const TeamsFrameworkSlideLeftPageRoute()
      : super(TeamsFrameworkSlideLeftPageRoute.name,
            path: '/teams-framework-page');

  static const String name = 'TeamsFrameworkSlideLeftPageRoute';
}

/// generated route for
/// [_i5.TeamsFrameworkPage]
class TeamsFrameworkSlideRightPageRoute extends _i7.PageRouteInfo<void> {
  const TeamsFrameworkSlideRightPageRoute()
      : super(TeamsFrameworkSlideRightPageRoute.name,
            path: '/teams-framework-page');

  static const String name = 'TeamsFrameworkSlideRightPageRoute';
}

/// generated route for
/// [_i6.TeamPage]
class TeamSlideLeftPageRoute
    extends _i7.PageRouteInfo<TeamSlideLeftPageRouteArgs> {
  TeamSlideLeftPageRoute({required _i9.Team team})
      : super(TeamSlideLeftPageRoute.name,
            path: '/team-page', args: TeamSlideLeftPageRouteArgs(team: team));

  static const String name = 'TeamSlideLeftPageRoute';
}

class TeamSlideLeftPageRouteArgs {
  const TeamSlideLeftPageRouteArgs({required this.team});

  final _i9.Team team;

  @override
  String toString() {
    return 'TeamSlideLeftPageRouteArgs{team: $team}';
  }
}
