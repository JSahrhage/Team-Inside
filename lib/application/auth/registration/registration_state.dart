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
    required bool isNavigationRequested,
    required Either<ValueFailure, Unit> valueFailureOrSuccess,
  }) = InsertEmail;

  const factory RegistrationState.insertPassword({
    required EmailAddress emailAddress,
    required Password password,
    required Password confirmationPassword,
    required Username username,
    required bool isPasswordVisible,
    required bool isConfirmationPasswordVisible,
    required bool isNavigationRequested,
    required Either<ValueFailure, Unit> valueFailureOrSuccess,
  }) = InsertPassword;

  const factory RegistrationState.insertUsername({
    required EmailAddress emailAddress,
    required Password password,
    required Password confirmationPassword,
    required Username username,
    required bool isPasswordVisible,
    required bool isConfirmationPasswordVisible,
    required bool isNavigationRequested,
    required bool isSubmitting,
    required Either<ValueFailure, Unit> valueFailureOrSuccess,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = InsertUsername;
}
