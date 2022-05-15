import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/auth/auth_bloc.dart';
import 'package:team_inside/application/localization/app_localizations_setup.dart';
import 'package:team_inside/application/localization/locale_cubit.dart';
import 'package:team_inside/injection.dart';
import 'package:team_inside/presentation/routes/router.gr.dart' as app_router;
import 'package:team_inside/presentation/theme/theme_cubit.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _appRouter = app_router.Router();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider(
          create: (context) => LocaleCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) {
          return BlocBuilder<LocaleCubit, LocaleState>(
            buildWhen: (previousState, currentState) =>
                previousState != currentState,
            builder: (_, localeState) {
              return MaterialApp.router(
                routerDelegate: AutoRouterDelegate(_appRouter),
                routeInformationParser: _appRouter.defaultRouteParser(),
                debugShowCheckedModeBanner: false,
                title: 'Team Inside',
                theme: theme,
                supportedLocales: AppLocalizationsSetup.supportedLocales,
                localizationsDelegates:
                    AppLocalizationsSetup.localizationsDelegates,
                localeResolutionCallback:
                    AppLocalizationsSetup.localeResolutionCallback,
                locale: localeState.locale,
              );
            },
          );
        },
      ),
    );
  }
}
