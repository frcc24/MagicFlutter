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
    String section110 = '110. Permanents';
    String section111 = '111. Tokens';
    String section112 = '112. Spells';
    String section113 = '113. Abilities';
    String section114 = '114. Emblems';
    String section115 = '115. Targets';
    String section116 = '116. Special Actions';
    String section117 = '117. Timing and Priority';
    String section118 = '118. Costs';
    String section119 = '119. Life';
    String section120 = '120. Damage';
    String section121 = '121. Drawing a Card';
    String section122 = '122. Counters';
    String section123 = '123. Stickers';

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
        StandardAccordion(
          title: Text(section110),
          content: controller.getList(from: section110),
        ),
        StandardAccordion(
          title: Text(section111),
          content: controller.getList(from: section111),
        ),
        StandardAccordion(
          title: Text(section112),
          content: controller.getList(from: section112),
        ),
        StandardAccordion(
          title: Text(section113),
          content: controller.getList(from: section113),
        ),
        StandardAccordion(
          title: Text(section114),
          content: controller.getList(from: section114),
        ),
        StandardAccordion(
          title: Text(section115),
          content: controller.getList(from: section115),
        ),
        StandardAccordion(
          title: Text(section116),
          content: controller.getList(from: section116),
        ),
        StandardAccordion(
          title: Text(section117),
          content: controller.getList(from: section117),
        ),
        StandardAccordion(
          title: Text(section118),
          content: controller.getList(from: section118),
        ),
        StandardAccordion(
          title: Text(section119),
          content: controller.getList(from: section119),
        ),
        StandardAccordion(
          title: Text(section120),
          content: controller.getList(from: section120),
        ),
        StandardAccordion(
          title: Text(section121),
          content: controller.getList(from: section121),
        ),
        StandardAccordion(
          title: Text(section122),
          content: controller.getList(from: section122),
        ),
        StandardAccordion(
          title: Text(section123),
          content: controller.getList(from: section123),
        ),
      ],
      title: const Text('1. Game Concepts'),
    );
  }
}
