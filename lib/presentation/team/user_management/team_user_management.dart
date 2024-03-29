import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/team/team_bloc.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/presentation/core/widgets/core_inkwell_card.dart';
import 'package:team_inside/presentation/presentation_config.dart' as config;

class TeamUserManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        context.read<TeamBloc>().add(
              const TeamEvent.refreshUsers(),
            );
        return Future.delayed(
          const Duration(seconds: config.kRefreshIndicatorDuration),
        );
      },
      child: BlocBuilder<TeamBloc, TeamState>(
        builder: (context, state) {
          if (state.usersRefreshing) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          return state.usersFetchFailureOrSuccess.fold(
            (failure) {
              return Container(
                color: Colors.red,
              );
            },
            (unit) {
              return _generateUserCards(state, context);
            },
          );
        },
      ),
    );
  }

  ListView _generateUserCards(
    TeamState state,
    BuildContext context,
  ) {
    return ListView.separated(
      physics: const AlwaysScrollableScrollPhysics(),
      separatorBuilder: (context, index) => Divider(
        color: Theme.of(context).colorScheme.onBackground,
      ),
      itemCount: state.userURLs.size,
      itemBuilder: (context, index) {
        for (final userURLTuple in state.userURLs.iter) {
          return CoreInkwellCard(
            callback: (String underlyingObjId) {
              context.read<TeamBloc>().add(
                    TeamEvent.navigateToUserRights(
                      UniqueId.fromUniqueString(underlyingObjId),
                    ),
                  );
            },
            underlyingObjId: userURLTuple.value1.id.getOrCrash(),
            cardTitle: userURLTuple.value1.username.getOrCrash(),
            icon: Icons.person,
            imageURL: userURLTuple.value2,
          );
        }
        return const Card();
      },
    );
  }
}
