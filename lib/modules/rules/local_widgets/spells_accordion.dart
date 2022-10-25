import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/global_widgets/standard_accordion.dart';
import '../rules_controller.dart';

class SpellsAccordion extends GetView<RulesController> {
  const SpellsAccordion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String section = '6. Spells, Abilities, and Effects';
    String section200 = '600. General';
    String section201 = '601. Casting Spells';
    String section102 = '602. Activating Activated Abilities';
    String section103 = '603. Handling Triggered Abilities';
    String section104 = '604. Handling Static Abilities';
    String section105 = '605. Mana Abilities';
    String section106 = '606. Loyalty Abilities';
    String section107 = '607. Linked Abilities';
    String section108 = '608. Resolving Spells and Abilities';
    String section109 = '609. Effects';
    String section110 = '610. One-Shot Effects';
    String section111 = '611. Continuous Effects';
    String section112 = '612. Text-Changing Effects';
    String section113 = '613. Interaction of Continuous Effects';
    String section114 = '614. Replacement Effects';
    String section115 = '615. Prevention Effects';
    String section116 =
        '616. Interaction of Replacement and/or Prevention Effects';

    return StandardAccordion(
      content: [
        // StandardAccordion(
        //   title: Text(section200),
        //   content:
        //       controller.getListSection(from: section200, section: section),
        // ),
        StandardAccordion(
          title: Text(section201),
          content:
              controller.getListSection(from: section201, section: section),
        ),
        StandardAccordion(
          title: Text(section102),
          content:
              controller.getListSection(from: section102, section: section),
        ),
        StandardAccordion(
          title: Text(section103),
          content:
              controller.getListSection(from: section103, section: section),
        ),
        StandardAccordion(
          title: Text(section104),
          content:
              controller.getListSection(from: section104, section: section),
        ),
        StandardAccordion(
          title: Text(section105),
          content:
              controller.getListSection(from: section105, section: section),
        ),
        StandardAccordion(
          title: Text(section106),
          content:
              controller.getListSection(from: section106, section: section),
        ),
        StandardAccordion(
          title: Text(section107),
          content:
              controller.getListSection(from: section107, section: section),
        ),
        StandardAccordion(
          title: Text(section108),
          content:
              controller.getListSection(from: section108, section: section),
        ),
        StandardAccordion(
          title: Text(section109),
          content:
              controller.getListSection(from: section109, section: section),
        ),
        StandardAccordion(
          title: Text(section110),
          content:
              controller.getListSection(from: section110, section: section),
        ),
        StandardAccordion(
          title: Text(section111),
          content:
              controller.getListSection(from: section111, section: section),
        ),
        StandardAccordion(
          title: Text(section112),
          content:
              controller.getListSection(from: section112, section: section),
        ),
        StandardAccordion(
          title: Text(section113),
          content:
              controller.getListSection(from: section113, section: section),
        ),
        StandardAccordion(
          title: Text(section114),
          content:
              controller.getListSection(from: section114, section: section),
        ),
        StandardAccordion(
          title: Text(section115),
          content:
              controller.getListSection(from: section115, section: section),
        ),
        StandardAccordion(
          title: Text(section116),
          content:
              controller.getListSection(from: section116, section: section),
        ),
      ],
      title: Text(section),
    );
  }
}
