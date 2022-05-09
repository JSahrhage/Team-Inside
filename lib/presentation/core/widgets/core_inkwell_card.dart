import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_inkwell_card_image.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';
import 'package:team_inside/presentation/presentation_config.dart' as config;

class CoreInkwellCard extends StatelessWidget {
  const CoreInkwellCard({
    Key? key,
    required this.callback,
    required this.underlayingObjId,
    required this.cardTitle,
    required this.icon,
    required this.imageURL,
    this.height,
  }) : super(key: key);

  final void Function(String) callback;
  final String underlayingObjId;
  final String cardTitle;
  final IconData icon;
  final Option<String> imageURL;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return CoreSizedPaddingBox(
      height: height ?? (config.kInkwellCardImageSize * 1.1),
      child: Card(
        color: Theme.of(context).colorScheme.background,
        child: InkWell(
          onTap: () => callback(underlayingObjId),
          child: Row(
            children: [
              const SizedBox(width: 8),
              CoreInkwellCardImage(
                icon: icon,
                imageURL: imageURL,
              ),
              Expanded(
                child: Text(
                  cardTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: config.kInkwellCardFontSize),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
