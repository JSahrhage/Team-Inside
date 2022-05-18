import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_inkwell_card.dart';

class TeamsFrameworkTeamCard extends StatelessWidget {
  const TeamsFrameworkTeamCard({
    Key? key,
    required this.callback,
    required this.underlyingObjId,
    required this.cardTitle,
    required this.icon,
    required this.imageURL,
    this.height,
  }) : super(key: key);

  final void Function(String) callback;
  final String underlyingObjId;
  final String cardTitle;
  final IconData icon;
  final Option<String> imageURL;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return CoreInkwellCard(
      callback: callback,
      underlyingObjId: underlyingObjId,
      cardTitle: cardTitle,
      icon: icon,
      imageURL: imageURL,
      height: height,
    );
  }
}
