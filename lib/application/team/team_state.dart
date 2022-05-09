part of 'team_bloc.dart';

@freezed
class TeamState with _$TeamState {
  const factory TeamState({
    required bool shouldNavigateBackToFramework,
  }) = _TeamState;

  factory TeamState.initial() => const TeamState(
        shouldNavigateBackToFramework: false,
      );
}
