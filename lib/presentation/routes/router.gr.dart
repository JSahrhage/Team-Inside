// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../auth/password_reset/password_reset_page.dart' as _i4;
import '../auth/registration/registration_page.dart' as _i3;
import '../auth/sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../teams_framework/teams_framework_page.dart' as _i5;

class Router extends _i6.RootStackRouter {
  Router([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    RegistrationPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.RegistrationPage());
    },
    PasswordResetPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.PasswordResetPage());
    },
    TeamsFrameworkPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.TeamsFrameworkPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashPageRoute.name, path: '/'),
        _i6.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i6.RouteConfig(RegistrationPageRoute.name, path: '/registration-page'),
        _i6.RouteConfig(PasswordResetPageRoute.name,
            path: '/password-reset-page'),
        _i6.RouteConfig(TeamsFrameworkPageRoute.name,
            path: '/teams-framework-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i6.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i6.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.RegistrationPage]
class RegistrationPageRoute extends _i6.PageRouteInfo<void> {
  const RegistrationPageRoute()
      : super(RegistrationPageRoute.name, path: '/registration-page');

  static const String name = 'RegistrationPageRoute';
}

/// generated route for
/// [_i4.PasswordResetPage]
class PasswordResetPageRoute extends _i6.PageRouteInfo<void> {
  const PasswordResetPageRoute()
      : super(PasswordResetPageRoute.name, path: '/password-reset-page');

  static const String name = 'PasswordResetPageRoute';
}

/// generated route for
/// [_i5.TeamsFrameworkPage]
class TeamsFrameworkPageRoute extends _i6.PageRouteInfo<void> {
  const TeamsFrameworkPageRoute()
      : super(TeamsFrameworkPageRoute.name, path: '/teams-framework-page');

  static const String name = 'TeamsFrameworkPageRoute';
}
