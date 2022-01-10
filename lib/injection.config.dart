import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:team_inside/application/auth/auth_bloc.dart';
import 'package:team_inside/application/auth/password_reset/password_reset_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';
import 'package:team_inside/application/auth/sign_in/sign_in_bloc.dart';
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
  g.registerLazySingleton<FirebaseFirestore>(
    () => firebaseInjectableModule.firebaseFirestore,
  );
  g.registerLazySingleton<IAuthFacade>(
    () => FirebaseAuthFacade(
      g<FirebaseAuth>(),
    ),
  );
  g.registerFactory<AuthBloc>(
    () => AuthBloc(
      g<IAuthFacade>(),
    ),
  );
  g.registerFactory<SignInBloc>(
    () => SignInBloc(
      g<IAuthFacade>(),
    ),
  );
  g.registerFactory<RegistrationBloc>(
    () => RegistrationBloc(
      g<IAuthFacade>(),
    ),
  );
  g.registerFactory<PasswordResetBloc>(
    () => PasswordResetBloc(
      g<IAuthFacade>(),
    ),
  );
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
