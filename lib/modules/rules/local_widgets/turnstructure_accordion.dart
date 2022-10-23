import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/global_widgets/standard_accordion.dart';
import '../rules_controller.dart';

class TurnStructureAccordion extends GetView<RulesController> {
  const TurnStructureAccordion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String section = '5. Turn Structure';
    String section200 = '500. General';
    String section201 = '501. Beginning Phase';
    String section102 = '502. Untap Step';
    String section103 = '503. Upkeep Step';
    String section104 = '504. Draw Step';
    String section105 = '505. Main Phase';
    String section106 = '506. Combat Phase';
    String section107 = '507. Beginning of Combat Step';
    String section108 = '508. Declare Attackers Step';
    String section109 = '509. Declare Blockers Step';
    String section110 = '510. Combat Damage Step';
    String section111 = '511. End of Combat Step';
    String section112 = '512. Ending Phase';
    String section113 = '513. End Step';
    String section114 = '514. Cleanup Step';

    return StandardAccordion(
      content: [
        StandardAccordion(
          title: Text(section200),
          content:
              controller.getListSection(from: section200, section: section),
        ),
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
      ],
      title: Text(section),
    );
  }
}
