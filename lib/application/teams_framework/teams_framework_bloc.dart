import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:team_inside/domain/auth/i_auth_facade.dart';

part 'teams_framework_event.dart';
part 'teams_framework_state.dart';
part 'teams_framework_bloc.freezed.dart';

@injectable
class TeamsFrameworkBloc
    extends Bloc<TeamsFrameworkEvent, TeamsFrameworkState> {
  final IAuthFacade _authFacade;
  TeamsFrameworkBloc(this._authFacade) : super(TeamsFrameworkState.initial()) {
    on<SignOut>((event, emit) async {
      await _authFacade.signOut();
      emit(
        state.copyWith(
          shouldSignOut: true,
        ),
      );
    });
  }
}
