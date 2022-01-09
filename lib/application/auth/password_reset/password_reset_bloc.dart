import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:team_inside/domain/auth/auth_failure.dart';
import 'package:team_inside/domain/auth/i_auth_facade.dart';
import 'package:team_inside/domain/auth/value_objects.dart';

part 'password_reset_event.dart';
part 'password_reset_state.dart';
part 'password_reset_bloc.freezed.dart';

@injectable
class PasswordResetBloc extends Bloc<PasswordResetEvent, PasswordResetState> {
  final IAuthFacade _authFacade;
  PasswordResetBloc(this._authFacade) : super(PasswordResetState.initial()) {
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
    on<SendPasswordResetEmailPressed>((event, emit) async {
      late Either<AuthFailure, Unit> failureOrSuccess =
          left(const AuthFailure.invalidEmail());

      final isEmailValid = state.emailAddress.isValid();

      if (isEmailValid) {
        emit(
          state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ),
        );

        failureOrSuccess = await _authFacade.sendPasswordResetEmail(
          emailAddress: state.emailAddress,
        );
      }

      emit(
        state.copyWith(
          isSubmitting: false,
          stateFlipper: !state.stateFlipper,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        ),
      );
    });
  }
}
