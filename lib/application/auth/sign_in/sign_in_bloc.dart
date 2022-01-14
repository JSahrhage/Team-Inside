import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:team_inside/domain/auth/auth_failure.dart';
import 'package:team_inside/domain/auth/i_auth_facade.dart';
import 'package:team_inside/domain/auth/value_objects.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _authFacade;
  SignInBloc(this._authFacade) : super(SignInState.initial()) {
    on<EmailChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            emailAddress: EmailAddress(event.email),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<PasswordChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            password: Password(event.password),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<PasswordVisibilityIconPressed>(
      (event, emit) {
        emit(
          state.copyWith(
            isPasswordVisible: !state.isPasswordVisible,
            authFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<SignInWithEmailAndPasswordPressed>(
      (event, emit) async {
        Either<AuthFailure, Unit> failureOrSuccess =
            left(const AuthFailure.invalidEmailAndPasswordCombination());

        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailValid && isPasswordValid) {
          emit(
            state.copyWith(
              isSubmitting: true,
              authFailureOrSuccessOption: none(),
            ),
          );

          failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
            emailAddress: state.emailAddress,
            password: state.password,
          );
        }

        emit(
          state.copyWith(
            isSubmitting: false,
            stateFlipper: !state.stateFlipper,
            authFailureOrSuccessOption: optionOf(failureOrSuccess),
          ),
        );
      },
    );
  }
}
