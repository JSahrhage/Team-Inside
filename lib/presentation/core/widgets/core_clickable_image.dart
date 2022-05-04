import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:team_inside/presentation/presentation_config.dart' as config;

class CoreClickableImage extends StatelessWidget {
  const CoreClickableImage({
    Key? key,
    required this.callback,
    required this.icon,
    required this.imageURL,
    this.size,
    this.alignment,
  }) : super(key: key);

  final VoidCallback callback;
  final IconData icon;
  final Option<String> imageURL;
  final double? size;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      splashColor: Colors.white10,
      child: Align(
        alignment: alignment ?? Alignment.center,
        child: imageURL.fold(
          () => Icon(
            icon,
            size: size ?? config.kInkwellCardImageSize,
            color: Theme.of(context).colorScheme.primary,
          ),
          (imageURL) => Ink.image(
            fit: BoxFit.cover,
            height: size ?? config.kInkwellCardImageSize,
            width: size ?? config.kInkwellCardImageSize,
            image: NetworkImage(
              imageURL,
            ),
          ),
        ),
      ),
    );
  }
}
