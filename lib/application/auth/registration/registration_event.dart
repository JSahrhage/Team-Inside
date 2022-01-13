part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  // PasswordVisibilityChanging
  const factory RegistrationEvent.passwordVisibilityIconPressed() =
      PasswordVisibilityIconPressed;
  const factory RegistrationEvent.confirmationPasswordVisibilityIconPressed() =
      ConfirmationPasswordVisibilityIconPressed;
  // Returning
  const factory RegistrationEvent.returnFromPasswordInsertionPagePressed() =
      ReturnFromPasswordInsertationPagePressed;
  const factory RegistrationEvent.returnFromUsernameInsertionPagePressed() =
      ReturnFromUsernameInsertationPagePressed;
  // ProceedingPressed
  const factory RegistrationEvent.proceedFromEmailInsertionPagePressed(
    String email,
  ) = ProceedFromEmailInsertionPagePressed;
  const factory RegistrationEvent.proceedFromPasswordInsertionPagePressed(
    String password,
    String confirmationPassword,
  ) = ProceedFromPasswordInsertionPagePressed;
  const factory RegistrationEvent.registerPressed(String username) =
      RegisterPressed;
  // ProceedingValidated
  const factory RegistrationEvent.emailInsertionProceedingValidated() =
      EmailInsertionProceedingValidated;
  const factory RegistrationEvent.passwordInsertionProceedingValidated() =
      PasswordInsertionProceedingValidated;
  const factory RegistrationEvent.registerValidated() = RegisterValidated;
}
