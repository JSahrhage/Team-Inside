part of 'teams_framework_bloc.dart';

@freezed
class TeamsFrameworkState with _$TeamsFrameworkState {
  const factory TeamsFrameworkState({
    required bool shouldSignOut,
  }) = _TeamsFrameworkState;

  factory TeamsFrameworkState.initial() => const TeamsFrameworkState(
        shouldSignOut: false,
      );
}
