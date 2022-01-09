import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_reset_event.dart';
part 'password_reset_state.dart';
part 'password_reset_bloc.freezed.dart';

class PasswordResetBloc extends Bloc<PasswordResetEvent, PasswordResetState> {
  PasswordResetBloc() : super(const Initial()) {
    on<PasswordResetEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
