import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../contracts/contracts.dart';
import 'local_widgets/local_widgets.dart';

class SettingsPage extends GetView<SettingsController> {
  static const ROUTE = '/settings_page';
  final maxHp;

  SettingsPage({Key? key, this.maxHp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
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
            ],
          ),
        ),
      ),
    );
  }
}
