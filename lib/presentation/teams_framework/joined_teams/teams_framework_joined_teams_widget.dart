import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:team_inside/application/teams_framework/teams_framework_bloc.dart';
import 'package:team_inside/domain/team/team.dart';
import 'package:team_inside/presentation/presentation_config.dart' as config;
import 'package:team_inside/presentation/teams_framework/widgets/teams_framework_team_card.dart';

class TeamsFrameworkJoinedTeamsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        context.read<TeamsFrameworkBloc>().add(
              const TeamsFrameworkEvent.refreshJoinedTeams(),
            );
        return Future.delayed(
          const Duration(seconds: config.kRefreshIndicatorDuration),
        );
      },
      child: BlocBuilder<TeamsFrameworkBloc, TeamsFrameworkState>(
        builder: (context, state) {
          if (state.joinedTeamsRefreshing) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          return state.joinedTeamsFetchFailureOrSuccess.fold(
            (failure) {
              return Container(
                color: Colors.red,
              );
            },
            (unit) {
              return state.joinedTeams.fold(
                (failure) {
                  return Container(
                    color: Colors.red,
                  );
                },
                (joinedTeams) {
                  return _generateJoinedTeamCards(
                    joinedTeams,
                    state,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  ListView _generateJoinedTeamCards(
    KtList<Team> joinedTeams,
    TeamsFrameworkState state,
  ) {
    return ListView.separated(
      physics: const AlwaysScrollableScrollPhysics(),
      separatorBuilder: (context, index) => Divider(
        color: Theme.of(context).colorScheme.onBackground,
      ),
      itemCount: joinedTeams.size,
      itemBuilder: (context, index) {
        for (final teamImageTuple in state.joinedTeamURLs.iter) {
          if (joinedTeams[index] == teamImageTuple.value1) {
            return TeamsFrameworkTeamCard(
              callback: (String underlyingObjId) {
                context.read<TeamsFrameworkBloc>().add(
                      TeamsFrameworkEvent.navigateToTeam(underlyingObjId),
                    );
              },
              underlyingObjId: teamImageTuple.value1.id.getOrCrash(),
              cardTitle: teamImageTuple.value1.teamname.getOrCrash(),
              icon: Icons.group,
              imageURL: teamImageTuple.value2,
            );
          }
        }
        return const Card();
      },
    );
  }
}
