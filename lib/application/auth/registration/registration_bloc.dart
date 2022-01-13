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
            stateFlipper: false,
            valueFailureOrValidityOption: some(
              left(
                const ValueFailure.invalidEmail(failedValue: 'Initial'),
              ),
            ),
          ),
        ) {
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
            emailAddress: EmailAddress(event.email),
            valueFailureOrValidityOption:
                optionOf(EmailAddress(event.email).failureOrUnit),
          ),
        );
      },
    );
    on<ProceedFromPasswordInsertionPagePressed>(
      (event, emit) {
        if (event.password != event.confirmationPassword) {
          emit(
            state.copyWith(
              password: Password(event.password),
              confirmationPassword: Password(event.password),
              valueFailureOrValidityOption: some(
                left(
                  ValueFailure.notMatchingPasswords(
                    failedValue:
                        'password: ${event.password}, confirmationPassword: ${event.confirmationPassword}',
                  ),
                ),
              ),
            ),
          );
        }
      },
    );
    on<RegisterPressed>(
      (event, emit) {
        emit(
          state.copyWith(),
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
            stateFlipper: false,
            valueFailureOrValidityOption: some(
              left(
                const ValueFailure.unsecurePassword(failedValue: 'Initial'),
              ),
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
            isSubmitting: false,
            stateFlipper: false,
            valueFailureOrValidityOption: some(
              left(
                const ValueFailure.invalidUsername(failedValue: 'Initial'),
              ),
            ),
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
