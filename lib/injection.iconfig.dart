import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:team_inside/application/auth/auth_bloc.dart';
import 'package:team_inside/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:team_inside/domain/auth/i_auth_facade.dart';
import 'package:team_inside/infrastructure/auth/firebase_auth_facade.dart';
import 'package:team_inside/infrastructure/core/firebase_injectable_module.dart';

void $initGetIt(
  GetIt g, {
  String? environment,
}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
    () => firebaseInjectableModule.firebaseAuth,
  );
  g.registerLazySingleton<GoogleSignIn>(
    () => firebaseInjectableModule.googleSignIn,
  );
  g.registerLazySingleton<IAuthFacade>(
    () => FirebaseAuthFacade(
      g<FirebaseAuth>(),
      g<GoogleSignIn>(),
    ),
  );
  g.registerFactory<SignInFormBloc>(
    () => SignInFormBloc(
      g<IAuthFacade>(),
    ),
  );
  g.registerFactory<AuthBloc>(
    () => AuthBloc(
      g<IAuthFacade>(),
    ),
  );
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
