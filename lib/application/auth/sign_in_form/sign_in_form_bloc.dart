import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:team_inside/domain/auth/auth_failure.dart';
import 'package:team_inside/domain/auth/i_auth_facade.dart';
import 'package:team_inside/domain/auth/value_objects.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<PasswordVisibilityIconPressed>(
      (event, emit) {
        emit(
          state.copyWith(
            isPasswordVisible: !state.isPasswordVisible,
          ),
        );
      },
    );
    on<PasswordForgottenPressed>(
      (event, emit) {},
    );
    on<SignInWithEmailAndPasswordPressed>(
      (event, emit) async {
        late Either<AuthFailure, Unit> failureOrSuccess =
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

          failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
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
    on<RegisterWithEmailAndPasswordPressed>(
      (event, emit) {},
    );
  }
}
