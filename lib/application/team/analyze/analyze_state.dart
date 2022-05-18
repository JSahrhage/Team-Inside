part of 'analyze_bloc.dart';

@freezed
class AnalyzeState with _$AnalyzeState {
  const factory AnalyzeState({
    required UniqueId teamId,
    required bool shouldNavigateBackToFramework,
  }) = _AnalyzeState;

  factory AnalyzeState.initial() => AnalyzeState(
        teamId: UniqueId(),
        shouldNavigateBackToFramework: false,
      );
}
