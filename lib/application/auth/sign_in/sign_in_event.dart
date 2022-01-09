part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.emailChanged(String email) = EmailChanged;
  const factory SignInEvent.passwordChanged(String password) = PasswordChanged;
  const factory SignInEvent.passwordVisibilityIconPressed() =
      PasswordVisibilityIconPressed;
  const factory SignInEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
}
