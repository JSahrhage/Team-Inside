import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_clickable_image.dart';

class TeamsFrameworkClickableUserImage extends StatelessWidget {
  const TeamsFrameworkClickableUserImage({
    Key? key,
    required this.callback,
    required this.icon,
    required this.imageURL,
    this.size,
  }) : super(key: key);

  final VoidCallback callback;
  final IconData icon;
  final Option<String> imageURL;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return CoreClickableImage(
      callback: callback,
      icon: icon,
      imageURL: imageURL,
      size: size,
    );
  }
}
