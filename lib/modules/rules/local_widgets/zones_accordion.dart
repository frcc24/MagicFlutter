import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/global_widgets/standard_accordion.dart';
import '../rules_controller.dart';

class ZonesAccordion extends GetView<RulesController> {
  const ZonesAccordion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String section = '4. Zones';
    String section200 = '400. General';
    String section201 = '401. Library';
    String section102 = '402. Hand';
    String section103 = '403. Battlefield';
    String section104 = '404. Graveyard';
    String section105 = '405. Stack';
    String section106 = '406. Exile';
    String section107 = '407. Ante';
    String section108 = '408. Command';

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
      ],
      title: Text(section),
    );
  }
}
