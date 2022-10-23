import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/global_widgets/standard_accordion.dart';
import '../rules_controller.dart';

class CasualVariantsAccordion extends GetView<RulesController> {
  const CasualVariantsAccordion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String section = '9. Casual Variants';
    String section200 = '900. General';
    String section201 = '901. Planechase';
    String section102 = '902. Vanguard';
    String section103 = '903. Commander';
    String section104 = '904. Archenemy';
    String section105 = '905. Conspiracy Draft';

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
      ],
      title: Text(section),
    );
  }
}
