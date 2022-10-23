import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_counter_lh/modules/modules.dart';
import 'package:magic_counter_lh/modules/rules/local_widgets/cardtypes_accordion.dart';
import 'package:magic_counter_lh/modules/rules/local_widgets/parts_of_card_accordion.dart';
import 'package:magic_counter_lh/modules/rules/local_widgets/turnstructure_accordion.dart';

import 'local_widgets/local_widgets.dart';
import 'local_widgets/zones_accordion.dart';

class RulesPage extends GetView<RulesController> {
  static const ROUTE = '/rules';

  RulesPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rules'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded))
        ],
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
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        DateSection(controller: controller),
                        const GameConceptsAccordion(),
                        const PartsOfACardAccordion(),
                        const CardTypesAccordion(),
                        const ZonesAccordion(),
                        const TurnStructureAccordion(),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

class DateSection extends StatelessWidget {
  const DateSection({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final RulesController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(controller.getDateLastUpdate()),
    );
  }
}
