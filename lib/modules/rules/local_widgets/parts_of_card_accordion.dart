import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/global_widgets/standard_accordion.dart';
import '../rules_controller.dart';

class PartsOfACardAccordion extends GetView<RulesController> {
  const PartsOfACardAccordion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String section200 = '200. General';
    String section201 = '201. Name';
    String section102 = '202. Mana Cost and Color';
    String section103 = '203. Illustration';
    String section104 = '204. Color Indicator';
    String section105 = '205. Type Line';
    String section106 = '206. Expansion Symbol';
    String section107 = '207. Text Box';
    String section108 = '208. Power/Toughness';
    String section109 = '209. Loyalty';
    String section110 = '210. Hand Modifier';
    String section111 = '211. Life Modifier';
    String section112 = '212. Information Below the Text Box';

    return StandardAccordion(
      content: [
        StandardAccordion(
          title: Text(section200),
          content: controller.getListParts(from: section200),
        ),
        StandardAccordion(
          title: Text(section201),
          content: controller.getListParts(from: section201),
        ),
        StandardAccordion(
          title: Text(section102),
          content: controller.getListParts(from: section102),
        ),
        StandardAccordion(
          title: Text(section103),
          content: controller.getListParts(from: section103),
        ),
        StandardAccordion(
          title: Text(section104),
          content: controller.getListParts(from: section104),
        ),
        StandardAccordion(
          title: Text(section105),
          content: controller.getListParts(from: section105),
        ),
        StandardAccordion(
          title: Text(section106),
          content: controller.getListParts(from: section106),
        ),
        StandardAccordion(
          title: Text(section107),
          content: controller.getListParts(from: section107),
        ),
        StandardAccordion(
          title: Text(section108),
          content: controller.getListParts(from: section108),
        ),
        StandardAccordion(
          title: Text(section109),
          content: controller.getListParts(from: section109),
        ),
        StandardAccordion(
          title: Text(section110),
          content: controller.getListParts(from: section110),
        ),
        StandardAccordion(
          title: Text(section111),
          content: controller.getListParts(from: section111),
        ),
        StandardAccordion(
          title: Text(section112),
          content: controller.getListParts(from: section112),
        ),
      ],
      title: const Text('2. Parts of a Card'),
    );
  }
}
