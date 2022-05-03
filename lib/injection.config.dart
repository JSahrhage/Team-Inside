import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:team_inside/application/auth/auth_bloc.dart';
import 'package:team_inside/application/auth/password_reset/password_reset_bloc.dart';
import 'package:team_inside/application/auth/registration/registration_bloc.dart';
import 'package:team_inside/application/auth/sign_in/sign_in_bloc.dart';
import 'package:team_inside/application/teams_framework/teams_framework_bloc.dart';
import 'package:team_inside/domain/auth/i_auth_facade.dart';
import 'package:team_inside/domain/image/i_image_facade.dart';
import 'package:team_inside/domain/teams/i_team_repository.dart';
import 'package:team_inside/infrastructure/auth/firebase_auth_facade.dart';
import 'package:team_inside/infrastructure/core/firebase_injectable_module.dart';
import 'package:team_inside/infrastructure/helper/firebase_image_facade.dart';
import 'package:team_inside/infrastructure/teams/team_repository.dart';

void $initGetIt(
  GetIt getIt, {
  String? environment,
}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  getIt.registerLazySingleton<FirebaseAuth>(
    () => firebaseInjectableModule.firebaseAuth,
  );
  getIt.registerLazySingleton<FirebaseFirestore>(
    () => firebaseInjectableModule.firebaseFirestore,
  );
  getIt.registerLazySingleton<FirebaseStorage>(
    () => firebaseInjectableModule.firebaseStorage,
  );
  getIt.registerLazySingleton<IAuthFacade>(
    () => FirebaseAuthFacade(
      getIt<FirebaseAuth>(),
      getIt<FirebaseFirestore>(),
    ),
  );
  getIt.registerLazySingleton<IImageFacade>(
    () => FirebaseImageFacade(
      getIt<FirebaseStorage>(),
    ),
  );
  getIt.registerLazySingleton<ITeamRepository>(
    () => TeamRepository(
      getIt<FirebaseFirestore>(),
    ),
  );
  getIt.registerFactory<AuthBloc>(
    () => AuthBloc(
      getIt<IAuthFacade>(),
    ),
  );
  getIt.registerFactory<SignInBloc>(
    () => SignInBloc(
      getIt<IAuthFacade>(),
    ),
  );
  getIt.registerFactory<RegistrationBloc>(
    () => RegistrationBloc(
      getIt<IAuthFacade>(),
    ),
  );
  getIt.registerFactory<PasswordResetBloc>(
    () => PasswordResetBloc(
      getIt<IAuthFacade>(),
    ),
  );
  getIt.registerFactory<TeamsFrameworkBloc>(
    () => TeamsFrameworkBloc(
      getIt<IAuthFacade>(),
      getIt<ITeamRepository>(),
      getIt<IImageFacade>(),
    ),
  );
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
