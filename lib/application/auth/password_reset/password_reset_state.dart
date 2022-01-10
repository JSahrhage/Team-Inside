part of 'password_reset_bloc.dart';

@freezed
class PasswordResetState with _$PasswordResetState {
  const factory PasswordResetState({
    required EmailAddress emailAddress,
    required bool isSubmitting,
    required bool
        stateFlipper, // Required to fire stateChange when .copyWith is called
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _PasswordResetState;

  factory PasswordResetState.initial() => PasswordResetState(
        emailAddress: EmailAddress(''),
        isSubmitting: false,
        stateFlipper: false,
        authFailureOrSuccessOption: none(),
      );
}
