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
    // String section102 = '102. Players';
    // String section103 = '103. Starting the Game';
    // String section104 = '104. Ending the Game';
    // String section105 = '105. Colors';
    // String section106 = '106. Mana';
    // String section107 = '107. Numbers and Symbols';
    // String section108 = '108. Cards';
    // String section109 = '109. Objects';

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
        // StandardAccordion(
        //   title: Text(section102),
        //   content: controller.getListParts(from: section102),
        // ),
        // StandardAccordion(
        //   title: Text(section103),
        //   content: controller.getListParts(from: section103),
        // ),
        // StandardAccordion(
        //   title: Text(section104),
        //   content: controller.getListParts(from: section104),
        // ),
        // StandardAccordion(
        //   title: Text(section105),
        //   content: controller.getListParts(from: section105),
        // ),
        // StandardAccordion(
        //   title: Text(section106),
        //   content: controller.getListParts(from: section106),
        // ),
        // StandardAccordion(
        //   title: Text(section107),
        //   content: controller.getListParts(from: section107),
        // ),
        // StandardAccordion(
        //   title: Text(section108),
        //   content: controller.getListParts(from: section108),
        // ),
        // StandardAccordion(
        //   title: Text(section109),
        //   content: controller.getListParts(from: section109),
        // ),
      ],
      title: const Text('2. Parts of a Card'),
    );
  }
}
