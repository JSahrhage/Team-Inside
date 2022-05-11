import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/localization/app_localizations.dart';
import 'package:team_inside/application/team/user_rights/user_rights_bloc.dart';
import 'package:team_inside/presentation/core/widgets/core_text_button.dart';
import 'package:team_inside/presentation/presentation_config.dart' as config;
import 'package:team_inside/presentation/routes/router.gr.dart';
import 'package:team_inside/presentation/team/user_rights/widgets/user_rights_return_to_team_button.dart';

class UserRightsForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserRightsBloc, UserRightsState>(
      listener: (context, state) {
        if (state.shouldNavigateBackToFramework) {
          context.router.replace(
            TeamSlideRightPageRoute(
              teamId: state.teamId,
            ),
          );
          return;
        }
      },
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: () {
            context.read<UserRightsBloc>().add(
                  const UserRightsEvent.updateTeamMember(),
                );
            return Future.delayed(
              const Duration(seconds: config.kRefreshIndicatorDuration),
            );
          },
          child: state.teamMemberFetchFailureOrSuccess.fold(
            (failure) {
              return Container(
                color: Colors.black,
              );
            },
            (success) {
              return state.teamMember.fold(
                () {
                  return Container(
                    color: Colors.black,
                  );
                },
                (teamMember) {
                  return ListView(
                    children: [
                      UserRightsReturnToTeamButton(
                        callback: () {
                          context.read<UserRightsBloc>().add(
                                const UserRightsEvent.navigateBackToTeam(),
                              );
                        },
                        height: 64,
                      ),
                      const SizedBox(height: 64),
                      Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.translate(
                              'admin',
                            )!,
                          ),
                          Checkbox(
                            value: state.isAdmin,
                            onChanged: (bool? value) {
                              context.read<UserRightsBloc>().add(
                                    UserRightsEvent.updateAdminRight(value!),
                                  );
                            },
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.translate(
                              'workout_creator',
                            )!,
                          ),
                          Checkbox(
                            value: state.isWorkoutCreator,
                            onChanged: (bool? value) {
                              context.read<UserRightsBloc>().add(
                                    UserRightsEvent.updateWorkoutCreatorRight(
                                      value!,
                                    ),
                                  );
                            },
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.translate(
                              'analyst',
                            )!,
                          ),
                          Checkbox(
                            value: state.isAnalyst,
                            onChanged: (bool? value) {
                              context.read<UserRightsBloc>().add(
                                    UserRightsEvent.updateAnalystRight(value!),
                                  );
                            },
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.translate(
                              'athlete',
                            )!,
                          ),
                          Checkbox(
                            value: state.isAthlete,
                            onChanged: (bool? value) {
                              context.read<UserRightsBloc>().add(
                                    UserRightsEvent.updateAthleteRight(value!),
                                  );
                            },
                          )
                        ],
                      ),
                      CoreTextButton(
                        callback: () {
                          context.read<UserRightsBloc>().add(
                                const UserRightsEvent.applyChanges(),
                              );
                        },
                        text: 'apply',
                      )
                    ],
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
