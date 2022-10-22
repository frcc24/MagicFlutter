import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_counter_lh/modules/modules.dart';
import 'package:magic_counter_lh/modules/rules/local_widgets/cardtypes_accordion.dart';
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
            alignment: Alignment.center,
            child: controller.isLoading.value
                ? const Center(
                    child: Padding(
                    padding: EdgeInsets.all(32.0),
                    child: CircularProgressIndicator(),
                  ))
                : Column(
                    children: const [
                      //ContentAccordion(),
                      GameConceptsAccordion(),
                      PartsOfACardAccordion(),
                      CardTypesAccordion(),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
