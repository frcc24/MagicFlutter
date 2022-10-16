import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/core.dart';
import 'mana_base_calculator_controller.dart';

class ManaBaseCalculatorPage extends GetView<ManaBaseCalcController> {
  static String ROUTE = '/manaBaseCalc';

  const ManaBaseCalculatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Mana Base Calculator',
      )),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            StandardTextFormField(
              onChanged: onChanged,
              label: 'Green Mana Symbols',
              hasClearButton: false,
              hasClearButtonSpace: false,
              keyboardType: TextInputType.number,
              maxLines: 1,
            ),
            StandardTextFormField(
              onChanged: onChanged,
              label: 'Black Mana Symbols',
              hasClearButton: false,
              hasClearButtonSpace: false,
              keyboardType: TextInputType.number,
              maxLines: 1,
            ),
            StandardTextFormField(
              onChanged: onChanged,
              label: 'White Mana Symbols',
              hasClearButton: false,
              hasClearButtonSpace: false,
              keyboardType: TextInputType.number,
              maxLines: 1,
            ),
            StandardTextFormField(
              onChanged: onChanged,
              label: 'Blue Mana Symbols',
              hasClearButton: false,
              hasClearButtonSpace: false,
              keyboardType: TextInputType.number,
              maxLines: 1,
            ),
            StandardTextFormField(
              onChanged: onChanged,
              label: 'Red Mana Symbols',
              hasClearButton: false,
              hasClearButtonSpace: false,
              keyboardType: TextInputType.number,
              maxLines: 1,
            ),
            StandardTextFormField(
              onChanged: onChanged,
              label: 'Number of lands in deck',
              hasClearButton: false,
              hasClearButtonSpace: false,
              keyboardType: TextInputType.number,
              maxLines: 1,
            ),
            ElevatedButton(
                // onPressed: () => controller.calculate(lands: 0),
                onPressed: () => controller.readAsset(),
                child: Text('Calculate'))
          ],
        ),
      ),
    );
  }

  void onChanged(String? txt) {}
}
