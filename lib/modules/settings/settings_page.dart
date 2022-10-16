import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../contracts/contracts.dart';
import 'local_widgets/local_widgets.dart';

class SettingsPage extends GetView<SettingsController> {
  static const ROUTE = '/settings_page';

  const SettingsPage();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        debugPrint('Settings ${controller.orientation}');

        (controller.orientation == 'Vertical')
            ? SystemChrome.setPreferredOrientations(
                [DeviceOrientation.portraitUp])
            : SystemChrome.setPreferredOrientations(
                [DeviceOrientation.landscapeLeft]);

        Get.back(result: controller.orientation);

        // Get.toNamed(LifeCounterPage.ROUTE);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Settings"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                OptionSelector(
                  type: 1.obs,
                  title: "Select Max HP".obs,
                  options: const ["20", "30", "40"],
                  selectedItem: controller.maxHP.toString().obs, //"20".obs,
                ),
                OptionSelector(
                  type: 2.obs,
                  title: "Select Orientation".obs,
                  options: const ["Vertical", "Horizontal"],
                  selectedItem: controller.orientation.toString().obs,
                ),
                OptionSelector(
                  type: 3.obs,
                  title: "Sound ON/OFF".obs,
                  options: const ["ON", "OFF"],
                  selectedItem: controller.soundOn.toString().obs, //"OFF".obs,
                ),
                OptionSelector(
                  type: 4.obs,
                  title: "Players".obs,
                  options: const ["2", "3", "4"],
                  selectedItem: controller.numPlayers.toString().obs,
                ),
                ElevatedButton(
                  onPressed: controller.goToPlanechase,
                  child: Text('Planechase'),
                ),
                ElevatedButton(
                  onPressed: controller.goToManaBaseCalculator,
                  child: Text('Mana Base Calculator'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
