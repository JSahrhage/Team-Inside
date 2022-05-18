part of 'analyze_bloc.dart';

@freezed
class AnalyzeEvent with _$AnalyzeEvent {
  const factory AnalyzeEvent.navigateBackToTeam() = NavigateBackToTeam;
  const factory AnalyzeEvent.setTeamId(UniqueId teamId) = SetTeamId;
}
