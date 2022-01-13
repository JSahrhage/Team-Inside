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
  // Proceeding
  const factory RegistrationEvent.proceedFromEmailInsertionPagePressed() =
      ProceedFromEmailInsertionPagePressed;
  const factory RegistrationEvent.proceedFromPasswordInsertionPagePressed() =
      ProceedFromPasswordInsertionPagePressed;
  const factory RegistrationEvent.registerPressed() = RegisterPressed;
}
