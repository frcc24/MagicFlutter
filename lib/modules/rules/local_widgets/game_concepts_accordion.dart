import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/global_widgets/standard_accordion.dart';
import '../rules_controller.dart';

class GameConceptsAccordion extends GetView<RulesController> {
  const GameConceptsAccordion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String section100 = '100. General';
    String section101 = '101. The Magic Golden Rules';
    String section102 = '102. Players';
    String section103 = '103. Starting the Game';
    String section104 = '104. Ending the Game';
    String section105 = '105. Colors';
    String section106 = '106. Mana';
    String section107 = '107. Numbers and Symbols';
    String section108 = '108. Cards';
    String section109 = '109. Objects';

    return StandardAccordion(
      content: [
        StandardAccordion(
          title: Text(section100),
          content: controller.getList(from: section100),
        ),
        StandardAccordion(
          title: Text(section101),
          content: controller.getList(from: section101),
        ),
        StandardAccordion(
          title: Text(section102),
          content: controller.getList(from: section102),
        ),
        StandardAccordion(
          title: Text(section103),
          content: controller.getList(from: section103),
        ),
        StandardAccordion(
          title: Text(section104),
          content: controller.getList(from: section104),
        ),
        StandardAccordion(
          title: Text(section105),
          content: controller.getList(from: section105),
        ),
        StandardAccordion(
          title: Text(section106),
          content: controller.getList(from: section106),
        ),
        StandardAccordion(
          title: Text(section107),
          content: controller.getList(from: section107),
        ),
        StandardAccordion(
          title: Text(section108),
          content: controller.getList(from: section108),
        ),
        StandardAccordion(
          title: Text(section109),
          content: controller.getList(from: section109),
        ),
      ],
      title: const Text('1. Game Concepts'),
    );
  }
}
