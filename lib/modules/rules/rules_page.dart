import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_counter_lh/modules/modules.dart';
import 'package:magic_counter_lh/modules/rules/local_widgets/parts_of_card_accordion.dart';

import 'local_widgets/local_widgets.dart';

class RulesPage extends GetView<RulesController> {
  static const ROUTE = '/rules';

  RulesPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rules'),
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Container(
            child: controller.isLoading.value
                ? const CircularProgressIndicator()
                : Column(
                    children: const [
                      //ContentAccordion(),
                      GameConceptsAccordion(),
                      PartsOfACardAccordion(),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
