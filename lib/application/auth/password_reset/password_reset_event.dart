part of 'password_reset_bloc.dart';

@freezed
class PasswordResetEvent with _$PasswordResetEvent {
  const factory PasswordResetEvent.started() = Started;
}
