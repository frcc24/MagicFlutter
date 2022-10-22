import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/global_widgets/standard_accordion.dart';
import '../rules_controller.dart';

class CardTypesAccordion extends GetView<RulesController> {
  const CardTypesAccordion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String section = '3. Card Types';
    String section200 = '300. General';
    String section201 = '301. Artifacts';
    String section102 = '302. Creatures';
    String section103 = '303. Enchantments';
    String section104 = '304. Instants';
    String section105 = '305. Lands';
    String section106 = '306. Planeswalkers';
    String section107 = '307. Sorceries';
    String section108 = '308. Tribals';
    String section109 = '309. Dungeons';
    String section110 = '310. Planes';
    String section111 = '311. Phenomena';
    String section112 = '312. Vanguards';
    String section113 = '313. Schemes';
    String section114 = '314. Conspiracies';

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
