import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:team_inside/application/teams_framework/teams_framework_bloc.dart';
import 'package:team_inside/presentation/presentation_config.dart' as config;
import 'package:team_inside/presentation/teams_framework/user_settings/widgets/teams_framework_change_username_button.dart';
import 'package:team_inside/presentation/teams_framework/user_settings/widgets/teams_framework_clickable_user_image.dart';
import 'package:team_inside/presentation/teams_framework/user_settings/widgets/teams_framework_delete_user_button.dart';
import 'package:team_inside/presentation/teams_framework/user_settings/widgets/teams_framework_select_image_dialog.dart';
import 'package:team_inside/presentation/teams_framework/user_settings/widgets/teams_framework_sign_out_button.dart';

class TeamsFrameworkUserSettingsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        context.read<TeamsFrameworkBloc>().add(
              const TeamsFrameworkEvent.refreshUserSettings(),
            );
        return Future.delayed(
          const Duration(seconds: config.kRefreshIndicatorDuration),
        );
      },
      child: BlocBuilder<TeamsFrameworkBloc, TeamsFrameworkState>(
        builder: (context, state) {
          return ListView(
            children: [
              const SizedBox(height: 64),
              TeamsFrameworkClickableUserImage(
                callback: () async {
                  showDialog<Either<dynamic, XFile?>>(
                    context: context,
                    builder: (BuildContext context) {
                      return const TeamsFrameworkSelectImageDialog();
                    },
                  ).then(
                    (imageOrException) {
                      if (imageOrException != null) {
                        imageOrException.fold(
                          (failure) {},
                          (image) async {
                            if (image != null) {
                              context.read<TeamsFrameworkBloc>().add(
                                    TeamsFrameworkEvent.imagePicked(
                                      File(image.path),
                                    ),
                                  );
                            }
                          },
                        );
                      }
                    },
                  );
                },
                icon: Icons.person,
                imageURL: state.userImageURL,
                size: 128,
              ),
              const SizedBox(height: 128),
              const TeamsFrameworkSignOutButton(),
              const SizedBox(height: 32),
              const TeamsFrameworkChangeUsernameButton(),
              const SizedBox(height: 32),
              const TeamsFrameworkDeleteUserButton(),
              // const SizedBox(height: 32),
              // const TeamsFrameworkCreateTeamButton(),
            ],
          );
        },
      ),
    );
  }
}
