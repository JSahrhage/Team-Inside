import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:team_inside/application/teams_framework/teams_framework_bloc.dart';
import 'package:team_inside/domain/team/team.dart';
import 'package:team_inside/presentation/presentation_config.dart' as config;
import 'package:team_inside/presentation/teams_framework/team_requests/widgets/teams_framework_team_request_dialog.dart';
import 'package:team_inside/presentation/teams_framework/widgets/teams_framework_team_card.dart';

class TeamsFrameworkTeamRequestsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        context.read<TeamsFrameworkBloc>().add(
              const TeamsFrameworkEvent.refreshTeamRequests(),
            );
        return Future.delayed(
          const Duration(seconds: config.kRefreshIndicatorDuration),
        );
      },
      child: BlocBuilder<TeamsFrameworkBloc, TeamsFrameworkState>(
        builder: (context, state) {
          if (state.teamRequestsRefreshing) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          return state.teamRequestsFetchFailureOrSuccess.fold(
            (failure) {
              return Container(
                color: Colors.red,
              );
            },
            (unit) {
              return state.teamRequests.fold(
                (failure) {
                  return Container(
                    color: Colors.red,
                  );
                },
                (teamRequests) {
                  return _generateTeamRequestCards(
                    teamRequests = teamRequests,
                    state = state,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  ListView _generateTeamRequestCards(
    KtList<Team> teamRequests,
    TeamsFrameworkState state,
  ) {
    return ListView.separated(
      physics: const AlwaysScrollableScrollPhysics(),
      separatorBuilder: (context, index) => Divider(
        color: Theme.of(context).colorScheme.onBackground,
      ),
      itemCount: teamRequests.size,
      itemBuilder: (context, index) {
        for (final teamRequestImageTuple in state.teamRequestURLs.iter) {
          if (teamRequests[index] == teamRequestImageTuple.value1) {
            return TeamsFrameworkTeamCard(
              callback: (String underlyingObjId) {
                showDialog<bool>(
                  context: context,
                  builder: (BuildContext context) {
                    return const TeamsFrameworkTeamRequestDialog();
                  },
                ).then(
                  (wasAccepted) {
                    if (wasAccepted != null) {
                      if (wasAccepted) {
                        context.read<TeamsFrameworkBloc>().add(
                              TeamsFrameworkEvent.acceptTeamRequest(
                                underlyingObjId,
                              ),
                            );
                      } else {
                        context.read<TeamsFrameworkBloc>().add(
                              TeamsFrameworkEvent.declineTeamRequest(
                                underlyingObjId,
                              ),
                            );
                      }
                    }
                  },
                );
              },
              underlyingObjId: teamRequestImageTuple.value1.id.getOrCrash(),
              cardTitle: teamRequestImageTuple.value1.teamname.getOrCrash(),
              icon: Icons.group,
              imageURL: teamRequestImageTuple.value2,
            );
          }
        }
        return const Card();
      },
    );
  }
}
