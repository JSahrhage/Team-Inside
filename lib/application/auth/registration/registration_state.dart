part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial({
    required EmailAddress emailAddress,
    required Password password,
    required Password confirmationPassword,
    required bool
        stateFlipper, // Required to fire stateChange when .copyWith is called
  }) = Initial;

  const factory RegistrationState.insertEmail({
    required EmailAddress emailAddress,
    required Password password,
    required Password confirmationPassword,
    required bool
        stateFlipper, // Required to fire stateChange when .copyWith is called
  }) = InsertEmail;

  const factory RegistrationState.insertPassword({
    required EmailAddress emailAddress,
    required Password password,
    required Password confirmationPassword,
    required bool
        stateFlipper, // Required to fire stateChange when .copyWith is called
  }) = InsertPassword;

  const factory RegistrationState.insertUsername({
    required EmailAddress emailAddress,
    required Password password,
    required Password confirmationPassword,
    required bool isSubmitting,
    required bool
        stateFlipper, // Required to fire stateChange when .copyWith is called
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = InsertUsername;
}
