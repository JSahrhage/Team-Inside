part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.insertEmail({
    required EmailAddress emailAddress,
    required Password password,
    required Password confirmationPassword,
    required Username username,
    required bool isPasswordVisible,
    required bool isConfirmationPasswordVisible,
    required bool isValidationRequested,
    required bool
        stateFlipper, // Required to fire stateChange when .copyWith is called
    required Either<ValueFailure, Unit> valueFailureOrValidityOption,
  }) = InsertEmail;

  const factory RegistrationState.insertPassword({
    required EmailAddress emailAddress,
    required Password password,
    required Password confirmationPassword,
    required Username username,
    required bool isPasswordVisible,
    required bool isConfirmationPasswordVisible,
    required bool isValidationRequested,
    required bool
        stateFlipper, // Required to fire stateChange when .copyWith is called
    required Either<ValueFailure, Unit> valueFailureOrValidityOption,
  }) = InsertPassword;

  const factory RegistrationState.insertUsername({
    required EmailAddress emailAddress,
    required Password password,
    required Password confirmationPassword,
    required Username username,
    required bool isPasswordVisible,
    required bool isConfirmationPasswordVisible,
    required bool isValidationRequested,
    required bool isSubmitting,
    required bool
        stateFlipper, // Required to fire stateChange when .copyWith is called#
    required Either<ValueFailure, Unit> valueFailureOrValidityOption,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = InsertUsername;
}
