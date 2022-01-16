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
            isValidationRequested: true,
            stateFlipper: false,
            valueFailureOrValidityOption: left(
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
            isValidationRequested: false,
            valueFailureOrValidityOption:
                EmailAddress(event.email).failureOrUnit,
          ),
        );
      },
    );
    on<PasswordChanged>(
      (event, emit) {
        final String password = event.password;
        final String confirmationPassword =
            state.confirmationPassword.value.getOrElse(() => '');
        if (password == confirmationPassword) {
          emit(
            state.copyWith(
              password: Password(event.password),
              isValidationRequested: false,
              valueFailureOrValidityOption: Password(password).failureOrUnit,
            ),
          );
        } else {
          emit(
            state.copyWith(
              password: Password(event.password),
              isValidationRequested: false,
              valueFailureOrValidityOption: left(
                ValueFailure.notMatchingPasswords(
                  firstFailedValue: password,
                  secondFailedValue: confirmationPassword,
                ),
              ),
            ),
          );
        }
      },
    );
    on<ConfirmationPasswordChanged>(
      (event, emit) {
        final String password = state.password.value.getOrElse(() => '');
        final String confirmationPassword = event.confirmationPassword;
        if (password == confirmationPassword) {
          emit(
            state.copyWith(
              confirmationPassword: Password(confirmationPassword),
              isValidationRequested: false,
              valueFailureOrValidityOption:
                  Password(confirmationPassword).failureOrUnit,
            ),
          );
        } else {
          emit(
            state.copyWith(
              confirmationPassword: Password(confirmationPassword),
              isValidationRequested: false,
              valueFailureOrValidityOption: left(
                ValueFailure.notMatchingPasswords(
                  firstFailedValue: password,
                  secondFailedValue: confirmationPassword,
                ),
              ),
            ),
          );
        }
      },
    );
    on<UsernameChanged>(
      (event, emit) {
        emit(
          (state as InsertUsername).copyWith(
            username: Username(event.username),
            isValidationRequested: false,
            valueFailureOrValidityOption:
                Username(event.username).failureOrUnit,
            authFailureOrSuccessOption: none(),
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
            isValidationRequested: false,
          ),
        );
      },
    );
    on<ConfirmationPasswordVisibilityIconPressed>(
      (event, emit) {
        emit(
          state.copyWith(
            isConfirmationPasswordVisible: !state.isConfirmationPasswordVisible,
            isValidationRequested: false,
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
            isValidationRequested: false,
            stateFlipper: false,
            valueFailureOrValidityOption: right(unit),
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
            isValidationRequested: false,
            stateFlipper: false,
            valueFailureOrValidityOption: right(unit),
          ),
        );
      },
    );
    // RequestValidation
    on<ValidationRequested>(
      (event, emit) {
        emit(
          state.copyWith(
            isValidationRequested: true,
            stateFlipper: !state.stateFlipper,
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
            isValidationRequested: false,
            stateFlipper: false,
            valueFailureOrValidityOption: left(
              const ValueFailure.emptyValue(failedValue: ''),
            ),
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
            isValidationRequested: false,
            isSubmitting: false,
            stateFlipper: false,
            valueFailureOrValidityOption: left(
              const ValueFailure.emptyValue(failedValue: ''),
            ),
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
