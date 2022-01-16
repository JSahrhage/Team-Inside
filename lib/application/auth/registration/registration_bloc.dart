import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:team_inside/domain/auth/auth_failure.dart';
import 'package:team_inside/domain/auth/i_auth_facade.dart';
import 'package:team_inside/domain/auth/value_objects.dart';
import 'package:team_inside/domain/core/failures.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final IAuthFacade _authFacade;
  RegistrationBloc(this._authFacade)
      : super(
          InsertEmail(
            emailAddress: EmailAddress(''),
            password: Password(''),
            confirmationPassword: Password(''),
            username: Username(''),
            isPasswordVisible: false,
            isConfirmationPasswordVisible: false,
            isNavigationRequested: false,
            valueFailureOrSuccess: left(
              const ValueFailure.emptyValue(failedValue: ''),
            ),
          ),
        ) {
    // ValueChanging
    on<EmailChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            emailAddress: EmailAddress(event.email),
            valueFailureOrSuccess: EmailAddress(event.email).failureOrUnit,
          ),
        );
      },
    );
    on<PasswordChanged>(
      (event, emit) {
        final String password = event.password;
        final String confirmationPassword =
            state.confirmationPassword.value.getOrElse(() => '');
        Either<ValueFailure, Unit> valueFailureOrSuccess = left(
          ValueFailure.notMatchingPasswords(
            firstFailedValue: password,
            secondFailedValue: confirmationPassword,
          ),
        );

        if (password == confirmationPassword) {
          valueFailureOrSuccess = Password(password).failureOrUnit;
        }

        emit(
          state.copyWith(
            password: Password(event.password),
            valueFailureOrSuccess: valueFailureOrSuccess,
          ),
        );
      },
    );
    on<ConfirmationPasswordChanged>(
      (event, emit) {
        final String password = state.password.value.getOrElse(() => '');
        final String confirmationPassword = event.confirmationPassword;
        Either<ValueFailure, Unit> valueFailureOrSuccess = left(
          ValueFailure.notMatchingPasswords(
            firstFailedValue: password,
            secondFailedValue: confirmationPassword,
          ),
        );

        if (password == confirmationPassword) {
          valueFailureOrSuccess = Password(confirmationPassword).failureOrUnit;
        }

        emit(
          state.copyWith(
            confirmationPassword: Password(confirmationPassword),
            valueFailureOrSuccess: valueFailureOrSuccess,
          ),
        );
      },
    );
    on<UsernameChanged>(
      (event, emit) {
        emit(
          (state as InsertUsername).copyWith(
            username: Username(event.username),
            valueFailureOrSuccess: Username(event.username).failureOrUnit,
          ),
        );
      },
    );
    // PasswordVisibilityChanging
    on<PasswordVisibilityIconPressed>(
      (event, emit) {
        emit(
          state.copyWith(
            isPasswordVisible: !state.isPasswordVisible,
          ),
        );
      },
    );
    on<ConfirmationPasswordVisibilityIconPressed>(
      (event, emit) {
        emit(
          state.copyWith(
            isConfirmationPasswordVisible: !state.isConfirmationPasswordVisible,
          ),
        );
      },
    );
    // Returning
    on<ReturnFromPasswordInsertationPagePressed>(
      (event, emit) {
        emit(
          RegistrationState.insertEmail(
            emailAddress: state.emailAddress,
            password: state.password,
            confirmationPassword: state.confirmationPassword,
            username: state.username,
            isPasswordVisible: state.isPasswordVisible,
            isConfirmationPasswordVisible: state.isConfirmationPasswordVisible,
            isNavigationRequested: false,
            valueFailureOrSuccess: right(unit),
          ),
        );
      },
    );
    on<ReturnFromUsernameInsertationPagePressed>(
      (event, emit) {
        emit(
          RegistrationState.insertPassword(
            emailAddress: state.emailAddress,
            password: state.password,
            confirmationPassword: state.confirmationPassword,
            username: state.username,
            isPasswordVisible: state.isPasswordVisible,
            isConfirmationPasswordVisible: state.isConfirmationPasswordVisible,
            isNavigationRequested: false,
            valueFailureOrSuccess: right(unit),
          ),
        );
      },
    );
    // ProceedingRequested
    on<ProceedingRequested>(
      (event, emit) {
        emit(
          state.copyWith(
            isNavigationRequested: true,
          ),
        );
      },
    );
    // ProceedingRequested
    on<ProceedingRequestEvaluated>(
      (event, emit) {
        emit(
          state.copyWith(
            isNavigationRequested: false,
          ),
        );
      },
    );
    // ProceedingValidated
    on<EmailInsertionProceedingValidated>(
      (event, emit) {
        emit(
          RegistrationState.insertPassword(
            emailAddress: state.emailAddress,
            password: state.password,
            confirmationPassword: state.confirmationPassword,
            username: state.username,
            isPasswordVisible: state.isPasswordVisible,
            isConfirmationPasswordVisible: state.isConfirmationPasswordVisible,
            isNavigationRequested: false,
            valueFailureOrSuccess: state.password.failureOrUnit,
          ),
        );
      },
    );
    on<PasswordInsertionProceedingValidated>(
      (event, emit) {
        emit(
          RegistrationState.insertUsername(
            emailAddress: state.emailAddress,
            password: state.password,
            confirmationPassword: state.confirmationPassword,
            username: state.username,
            isPasswordVisible: state.isPasswordVisible,
            isConfirmationPasswordVisible: state.isConfirmationPasswordVisible,
            isNavigationRequested: false,
            isSubmitting: false,
            valueFailureOrSuccess: state.username.failureOrUnit,
            authFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<RegisterValidated>(
      (event, emit) async {
        emit(
          (state as InsertUsername).copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ),
        );
        final Either<AuthFailure, Unit> failureOrSuccess =
            await _authFacade.registerWithEmailAndPasswordAndUsername(
          emailAddress: state.emailAddress,
          password: state.password,
          username: state.username,
        );
        emit(
          (state as InsertUsername).copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: optionOf(failureOrSuccess),
          ),
        );
      },
    );
  }
}
