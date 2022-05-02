part of 'teams_framework_bloc.dart';

@freezed
class TeamsFrameworkEvent with _$TeamsFrameworkEvent {
  const factory TeamsFrameworkEvent.signOut() = SignOut;
  const factory TeamsFrameworkEvent.createTeam() = CreateTeam;
  const factory TeamsFrameworkEvent.printTeams() = PrintTeams;
}
