part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  // ValueChanging
  const factory RegistrationEvent.emailChanged(String email) = EmailChanged;
  const factory RegistrationEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory RegistrationEvent.confirmationPasswordChanged(
    String confirmationPassword,
  ) = ConfirmationPasswordChanged;
  const factory RegistrationEvent.usernameChanged(
    String username,
  ) = UsernameChanged;
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
  // ProceedingRequested
  const factory RegistrationEvent.proceedingRequested() = ProceedingRequested;
  const factory RegistrationEvent.proceedingRequestEvaluated() =
      ProceedingRequestEvaluated;
  // ProceedingValidated
  const factory RegistrationEvent.emailInsertionProceedingValidated() =
      EmailInsertionProceedingValidated;
  const factory RegistrationEvent.passwordInsertionProceedingValidated() =
      PasswordInsertionProceedingValidated;
  const factory RegistrationEvent.registerValidated() = RegisterValidated;
}
