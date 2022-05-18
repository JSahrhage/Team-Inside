import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_title.dart';

class UserRightsTitle extends StatelessWidget {
  const UserRightsTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CoreTitle(
      text: 'user_rights',
    );
  }
}
