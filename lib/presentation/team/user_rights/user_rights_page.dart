import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:team_inside/application/team/user_rights/user_rights_bloc.dart';
import 'package:team_inside/domain/core/unique_id_value_object.dart';
import 'package:team_inside/injection.dart';
import 'package:team_inside/presentation/team/user_rights/user_rights_form.dart';

class UserRightsPage extends StatelessWidget {
  const UserRightsPage({
    required this.teamId,
    required this.teamMemberId,
  });

  final UniqueId teamId;
  final UniqueId teamMemberId;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: BlocProvider(
          create: (context) => getIt<UserRightsBloc>()
            ..add(UserRightsEvent.setIds(teamId, teamMemberId))
            ..add(const UserRightsEvent.updateTeamMember()),
          child: UserRightsForm(),
        ),
      ),
    );
  }
}
