part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required EmailAddress emailAddress,
    required Password password,
    required bool isSubmitting,
    required bool isPasswordVisible,
    required bool
        stateFlipper, // Required to fire change state when .copyWith is called
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        isSubmitting: false,
        isPasswordVisible: false,
        stateFlipper: false,
        authFailureOrSuccessOption: none(),
      );
}
