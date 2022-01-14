import 'package:flutter/material.dart';
import 'package:team_inside/presentation/core/widgets/core_instruction_text.dart';
import 'package:team_inside/presentation/core/widgets/core_sized_padding_box.dart';

class RegistrationInsertPasswordInstructionText extends StatelessWidget {
  const RegistrationInsertPasswordInstructionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CoreSizedPaddingBox(
      child: CoreInstructionText(text: 'insert_password'),
    );
  }
}
