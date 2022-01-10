part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    required EmailAddress emailAddress,
    required Password password,
    required Password confirmationPassword,
    required bool isSubmitting,
    required bool
        stateFlipper, // Required to fire stateChange when .copyWith is called
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _RegistrationState;

  factory RegistrationState.initial() => RegistrationState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        confirmationPassword: Password(''),
        isSubmitting: false,
        stateFlipper: false,
        authFailureOrSuccessOption: none(),
      );
  factory RegistrationState.insertEmail() => RegistrationState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        confirmationPassword: Password(''),
        isSubmitting: false,
        stateFlipper: false,
        authFailureOrSuccessOption: none(),
      );
  factory RegistrationState.insertPassword() => RegistrationState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        confirmationPassword: Password(''),
        isSubmitting: false,
        stateFlipper: false,
        authFailureOrSuccessOption: none(),
      );
  factory RegistrationState.insertUsername() => RegistrationState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        confirmationPassword: Password(''),
        isSubmitting: false,
        stateFlipper: false,
        authFailureOrSuccessOption: none(),
      );
}
