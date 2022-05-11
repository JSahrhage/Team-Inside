import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:team_inside/presentation/presentation_config.dart' as config;

class CoreInkwellCardImage extends StatelessWidget {
  const CoreInkwellCardImage({
    Key? key,
    required this.icon,
    required this.imageURL,
    this.size,
  }) : super(key: key);

  final IconData icon;
  final Option<String> imageURL;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return imageURL.fold(
      () => Icon(
        icon,
        size: size ?? config.kInkwellCardImageSize,
        color: Theme.of(context).colorScheme.primary,
      ),
      (imageURL) => Container(
        height: size ?? config.kInkwellCardImageSize,
        width: size ?? config.kInkwellCardImageSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              imageURL,
            ),
          ),
        ),
      ),
    );
  }
}
