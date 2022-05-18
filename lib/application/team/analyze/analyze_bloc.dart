import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';

part 'analyze_event.dart';
part 'analyze_state.dart';
part 'analyze_bloc.freezed.dart';

class AnalyzeBloc extends Bloc<AnalyzeEvent, AnalyzeState> {
  AnalyzeBloc() : super(AnalyzeState.initial()) {
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
