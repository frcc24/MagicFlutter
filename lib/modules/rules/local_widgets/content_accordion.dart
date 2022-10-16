import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/global_widgets/standard_accordion.dart';
import '../rules_controller.dart';

class ContentAccordion extends GetView<RulesController> {
  const ContentAccordion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardAccordion(
      content: [
        StandardAccordion(
          title: const Text('1. Game Concepts'),
          content: controller.getList(from: '1. Game Concepts'),
        ),
        StandardAccordion(
          title: const Text('2. Parts of a Card'),
          content: controller.getList(from: '2. Parts of a Card'),
        ),
        StandardAccordion(
          title: const Text('3. Card Types'),
          content: controller.getList(from: '3. Card Types'),
        ),
        StandardAccordion(
          title: const Text('4. Zones'),
          content: controller.getList(from: '4. Zones'),
        ),
        StandardAccordion(
          title: const Text('5. Turn Structure'),
          content: controller.getList(from: '5. Turn Structure'),
        ),
        StandardAccordion(
          title: const Text('6. Spells, Abilities, and Effects'),
          content:
              controller.getList(from: '6. Spells, Abilities, and Effects'),
        ),
        StandardAccordion(
          title: const Text('7. Additional Rules'),
          content: controller.getList(from: '7. Additional Rules'),
        ),
        StandardAccordion(
          title: const Text('8. Multiplayer Rules'),
          content: controller.getList(from: '8. Multiplayer Rules'),
        ),
        StandardAccordion(
          title: const Text('9. Casual Variants'),
          content: controller.getList(from: '9. Casual Variants'),
        ),
      ],
      title: const Text('Glossary'),
    );
  }
}
