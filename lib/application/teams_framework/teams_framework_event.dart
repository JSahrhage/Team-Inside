part of 'teams_framework_bloc.dart';

@freezed
class TeamsFrameworkEvent with _$TeamsFrameworkEvent {
  const factory TeamsFrameworkEvent.signOut() = SignOut;
  const factory TeamsFrameworkEvent.refreshJoinedTeams() = RefreshJoinedTeams;
  const factory TeamsFrameworkEvent.refreshTeamRequests() = RefreshTeamRequests;
  const factory TeamsFrameworkEvent.refreshUserSettings() = RefreshUserSettings;
  const factory TeamsFrameworkEvent.imagePicked(File image) = ImagePicked;
}
