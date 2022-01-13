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
            isValidationRequested: false,
            stateFlipper: false,
            valueFailureOrValidityOption: none(),
          ),
        ) {
    // ValueChanging
    on<EmailChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            emailAddress: EmailAddress(event.email),
            valueFailureOrValidityOption:
                optionOf(EmailAddress(event.email).failureOrUnit),
          ),
        );
      },
    );
    on<PasswordChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            password: Password(event.password),
            valueFailureOrValidityOption:
                optionOf(Password(event.password).failureOrUnit),
          ),
        );
      },
    );
    on<ConfirmationPasswordChanged>(
      (event, emit) {
        emit(
          state.copyWith(
            confirmationPassword: Password(event.confirmationPassword),
            valueFailureOrValidityOption:
                optionOf(Password(event.confirmationPassword).failureOrUnit),
          ),
        );
      },
    );
    on<UsernameChanged>(
      (event, emit) {
        emit(
          (state as InsertUsername).copyWith(
            username: Username(event.username),
            valueFailureOrValidityOption:
                optionOf(Username(event.username).failureOrUnit),
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
            isValidationRequested: false,
            stateFlipper: false,
            valueFailureOrValidityOption: none(),
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
            valueFailureOrValidityOption: none(),
          ),
        );
      },
    );
    // ProceedingPressed
    on<ProceedFromEmailInsertionPagePressed>(
      (event, emit) {
        emit(
          state.copyWith(
            isValidationRequested: false,
          ),
        );
      },
    );
    on<ProceedFromPasswordInsertionPagePressed>(
      (event, emit) {
        emit(
          state.copyWith(
            isValidationRequested: false,
          ),
        );
      },
    );
    on<RegisterPressed>(
      (event, emit) {
        emit(
          state.copyWith(
            isValidationRequested: false,
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
            valueFailureOrValidityOption: none(),
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
            valueFailureOrValidityOption: none(),
            authFailureOrSuccessOption: none(),
          ),
        );
      },
    );
    on<RegisterValidated>(
      (event, emit) {
        // TODO: implement event handler
      },
    );
  }
}
