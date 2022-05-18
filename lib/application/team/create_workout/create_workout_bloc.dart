import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';

part 'create_workout_event.dart';
part 'create_workout_state.dart';
part 'create_workout_bloc.freezed.dart';

class CreateWorkoutBloc extends Bloc<CreateWorkoutEvent, CreateWorkoutState> {
  CreateWorkoutBloc() : super(CreateWorkoutState.initial()) {
    on<SetTeamId>(
      (event, emit) {
        emit(
          state.copyWith(
            teamId: event.teamId,
          ),
        );
      },
    );
    on<NavigateBackToTeam>(
      (event, emit) {
        emit(
          state.copyWith(
            shouldNavigateBackToFramework: true,
          ),
        );
      },
    );
  }
}
