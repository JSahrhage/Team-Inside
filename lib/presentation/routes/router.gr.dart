// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../domain/core/unique_id_value_object.dart' as _i10;
import '../auth/password_reset/password_reset_page.dart' as _i4;
import '../auth/registration/registration_page.dart' as _i3;
import '../auth/sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../team/team_page.dart' as _i6;
import '../team/user_rights/user_rights_page.dart' as _i7;
import '../teams_framework/teams_framework_page.dart' as _i5;

class Router extends _i8.RootStackRouter {
  Router([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    SignInSlideRightPageRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.SignInPage(),
          transitionsBuilder: _i8.TransitionsBuilders.slideRight,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    RegistrationPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.RegistrationPage());
    },
    RegistrationSlideLeftPageRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: _i3.RegistrationPage(),
          transitionsBuilder: _i8.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    PasswordResetPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.PasswordResetPage());
    },
    PasswordResetSlideLeftPageRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: _i4.PasswordResetPage(),
          transitionsBuilder: _i8.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    TeamsFrameworkPageRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.TeamsFrameworkPage());
    },
    TeamsFrameworkSlideLeftPageRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: _i5.TeamsFrameworkPage(),
          transitionsBuilder: _i8.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    TeamsFrameworkSlideRightPageRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: _i5.TeamsFrameworkPage(),
          transitionsBuilder: _i8.TransitionsBuilders.slideRight,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    TeamSlideLeftPageRoute.name: (routeData) {
      final args = routeData.argsAs<TeamSlideLeftPageRouteArgs>();
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: _i6.TeamPage(teamId: args.teamId),
          transitionsBuilder: _i8.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    TeamSlideRightPageRoute.name: (routeData) {
      final args = routeData.argsAs<TeamSlideRightPageRouteArgs>();
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: _i6.TeamPage(teamId: args.teamId),
          transitionsBuilder: _i8.TransitionsBuilders.slideRight,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    UserRightsSlideLeftPageRoute.name: (routeData) {
      final args = routeData.argsAs<UserRightsSlideLeftPageRouteArgs>();
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: _i7.UserRightsPage(
              teamId: args.teamId, teamMemberId: args.teamMemberId),
          transitionsBuilder: _i8.TransitionsBuilders.slideLeft,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SplashPageRoute.name, path: '/'),
        _i8.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i8.RouteConfig(SignInSlideRightPageRoute.name, path: '/sign-in-page'),
        _i8.RouteConfig(RegistrationPageRoute.name, path: '/registration-page'),
        _i8.RouteConfig(RegistrationSlideLeftPageRoute.name,
            path: '/registration-page'),
        _i8.RouteConfig(PasswordResetPageRoute.name,
            path: '/password-reset-page'),
        _i8.RouteConfig(PasswordResetSlideLeftPageRoute.name,
            path: '/password-reset-page'),
        _i8.RouteConfig(TeamsFrameworkPageRoute.name,
            path: '/teams-framework-page'),
        _i8.RouteConfig(TeamsFrameworkSlideLeftPageRoute.name,
            path: '/teams-framework-page'),
        _i8.RouteConfig(TeamsFrameworkSlideRightPageRoute.name,
            path: '/teams-framework-page'),
        _i8.RouteConfig(TeamSlideLeftPageRoute.name, path: '/team-page'),
        _i8.RouteConfig(TeamSlideRightPageRoute.name, path: '/team-page'),
        _i8.RouteConfig(UserRightsSlideLeftPageRoute.name,
            path: '/user-rights-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i8.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i8.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInSlideRightPageRoute extends _i8.PageRouteInfo<void> {
  const SignInSlideRightPageRoute()
      : super(SignInSlideRightPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInSlideRightPageRoute';
}

/// generated route for
/// [_i3.RegistrationPage]
class RegistrationPageRoute extends _i8.PageRouteInfo<void> {
  const RegistrationPageRoute()
      : super(RegistrationPageRoute.name, path: '/registration-page');

  static const String name = 'RegistrationPageRoute';
}

/// generated route for
/// [_i3.RegistrationPage]
class RegistrationSlideLeftPageRoute extends _i8.PageRouteInfo<void> {
  const RegistrationSlideLeftPageRoute()
      : super(RegistrationSlideLeftPageRoute.name, path: '/registration-page');

  static const String name = 'RegistrationSlideLeftPageRoute';
}

/// generated route for
/// [_i4.PasswordResetPage]
class PasswordResetPageRoute extends _i8.PageRouteInfo<void> {
  const PasswordResetPageRoute()
      : super(PasswordResetPageRoute.name, path: '/password-reset-page');

  static const String name = 'PasswordResetPageRoute';
}

/// generated route for
/// [_i4.PasswordResetPage]
class PasswordResetSlideLeftPageRoute extends _i8.PageRouteInfo<void> {
  const PasswordResetSlideLeftPageRoute()
      : super(PasswordResetSlideLeftPageRoute.name,
            path: '/password-reset-page');

  static const String name = 'PasswordResetSlideLeftPageRoute';
}

/// generated route for
/// [_i5.TeamsFrameworkPage]
class TeamsFrameworkPageRoute extends _i8.PageRouteInfo<void> {
  const TeamsFrameworkPageRoute()
      : super(TeamsFrameworkPageRoute.name, path: '/teams-framework-page');

  static const String name = 'TeamsFrameworkPageRoute';
}

/// generated route for
/// [_i5.TeamsFrameworkPage]
class TeamsFrameworkSlideLeftPageRoute extends _i8.PageRouteInfo<void> {
  const TeamsFrameworkSlideLeftPageRoute()
      : super(TeamsFrameworkSlideLeftPageRoute.name,
            path: '/teams-framework-page');

  static const String name = 'TeamsFrameworkSlideLeftPageRoute';
}

/// generated route for
/// [_i5.TeamsFrameworkPage]
class TeamsFrameworkSlideRightPageRoute extends _i8.PageRouteInfo<void> {
  const TeamsFrameworkSlideRightPageRoute()
      : super(TeamsFrameworkSlideRightPageRoute.name,
            path: '/teams-framework-page');

  static const String name = 'TeamsFrameworkSlideRightPageRoute';
}

/// generated route for
/// [_i6.TeamPage]
class TeamSlideLeftPageRoute
    extends _i8.PageRouteInfo<TeamSlideLeftPageRouteArgs> {
  TeamSlideLeftPageRoute({required _i10.UniqueId teamId})
      : super(TeamSlideLeftPageRoute.name,
            path: '/team-page',
            args: TeamSlideLeftPageRouteArgs(teamId: teamId));

  static const String name = 'TeamSlideLeftPageRoute';
}

class TeamSlideLeftPageRouteArgs {
  const TeamSlideLeftPageRouteArgs({required this.teamId});

  final _i10.UniqueId teamId;

  @override
  String toString() {
    return 'TeamSlideLeftPageRouteArgs{teamId: $teamId}';
  }
}

/// generated route for
/// [_i6.TeamPage]
class TeamSlideRightPageRoute
    extends _i8.PageRouteInfo<TeamSlideRightPageRouteArgs> {
  TeamSlideRightPageRoute({required _i10.UniqueId teamId})
      : super(TeamSlideRightPageRoute.name,
            path: '/team-page',
            args: TeamSlideRightPageRouteArgs(teamId: teamId));

  static const String name = 'TeamSlideRightPageRoute';
}

class TeamSlideRightPageRouteArgs {
  const TeamSlideRightPageRouteArgs({required this.teamId});

  final _i10.UniqueId teamId;

  @override
  String toString() {
    return 'TeamSlideRightPageRouteArgs{teamId: $teamId}';
  }
}

/// generated route for
/// [_i7.UserRightsPage]
class UserRightsSlideLeftPageRoute
    extends _i8.PageRouteInfo<UserRightsSlideLeftPageRouteArgs> {
  UserRightsSlideLeftPageRoute(
      {required _i10.UniqueId teamId, required _i10.UniqueId teamMemberId})
      : super(UserRightsSlideLeftPageRoute.name,
            path: '/user-rights-page',
            args: UserRightsSlideLeftPageRouteArgs(
                teamId: teamId, teamMemberId: teamMemberId));

  static const String name = 'UserRightsSlideLeftPageRoute';
}

class UserRightsSlideLeftPageRouteArgs {
  const UserRightsSlideLeftPageRouteArgs(
      {required this.teamId, required this.teamMemberId});

  final _i10.UniqueId teamId;

  final _i10.UniqueId teamMemberId;

  @override
  String toString() {
    return 'UserRightsSlideLeftPageRouteArgs{teamId: $teamId, teamMemberId: $teamMemberId}';
  }
}
