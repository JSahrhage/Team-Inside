// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../auth/password_reset/password_reset_page.dart' as _i3;
import '../auth/sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;

class Router extends _i4.RootStackRouter {
  Router([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    PasswordResetPageRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.PasswordResetPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SplashPageRoute.name, path: '/'),
        _i4.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i4.RouteConfig(PasswordResetPageRoute.name,
            path: '/password-reset-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i4.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i4.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.PasswordResetPage]
class PasswordResetPageRoute extends _i4.PageRouteInfo<void> {
  const PasswordResetPageRoute()
      : super(PasswordResetPageRoute.name, path: '/password-reset-page');

  static const String name = 'PasswordResetPageRoute';
}
