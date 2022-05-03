import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/teams_framework/teams_framework_bloc.dart';
import 'package:team_inside/presentation/core/widgets/core_inkwell_card.dart';

class TeamsFrameworkJoinedTeamsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        context.read<TeamsFrameworkBloc>().add(
              const TeamsFrameworkEvent.refreshJoinedTeams(),
            );
        return Future.delayed(
          const Duration(seconds: 3),
        );
      },
      child: BlocBuilder<TeamsFrameworkBloc, TeamsFrameworkState>(
        builder: (context, state) {
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
                  return ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: joinedTeams.size,
                    itemBuilder: (context, index) {
                      for (final teamImageTuple in state.joinedTeamURLs.iter) {
                        if (joinedTeams[index] == teamImageTuple.value1) {
                          return CoreInkwellCard(
                            callback: (String underlayingObjId) {},
                            underlayingObjId:
                                teamImageTuple.value1.id.getOrCrash(),
                            cardTitle:
                                teamImageTuple.value1.teamname.getOrCrash(),
                            icon: Icons.group,
                            imageURL: teamImageTuple.value2,
                          );
                        }
                      }
                      return const Card();
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
