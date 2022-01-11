part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.emailChanged(String email) = EmailChanged;
  const factory RegistrationEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory RegistrationEvent.confirmationPasswordChanged(
    String confirmationPassword,
  ) = ConfirmationPasswordChanged;
  const factory RegistrationEvent.usernameChanged(
    String username,
  ) = UsernameChanged;
  const factory RegistrationEvent.passwordVisibilityIconPressed() =
      PasswordVisibilityIconPressed;
  const factory RegistrationEvent.confirmationPasswordVisibilityIconPressed() =
      ConfirmationPasswordVisibilityIconPressed;
  const factory RegistrationEvent.proceedFromEmailInsertionPagePressed() =
      ProceedFromEmailInsertionPagePressed;
  const factory RegistrationEvent.proceedFromPasswordInsertionPagePressed() =
      ProceedFromPasswordInsertionPagePressed;
  const factory RegistrationEvent.registerPressed() = RegisterPressed;
}
