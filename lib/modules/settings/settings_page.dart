import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:magic_counter_lh/contracts/settings_controller.dart';

class SettingsPage extends GetView<SettingsController> {
  static const ROUTE = '/settings_page';
  final maxHp;

  SettingsPage({Key? key, this.maxHp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  selectedItem: "20".obs,
                ),
                OptionSelector(
                  type: 2.obs,
                  title: "Select Orientation".obs,
                  options: const ["Vertical", "Horizontal"],
                  selectedItem: "Vertical".obs,
                ),
                OptionSelector(
                  type: 3.obs,
                  title: "Sound ON/OFF".obs,
                  options: const ["ON", "OFF"],
                  selectedItem: "OFF".obs,
                ),
                OptionSelector(
                  type: 4.obs,
                  title: "Players".obs,
                  options: const ["2", "3", "4"],
                  selectedItem: "2".obs,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OptionSelector extends GetView<SettingsController> {
  RxString title;
  RxString selectedItem = "".obs;
  RxInt type = 0.obs;

  List<String> options;

  OptionSelector({
    required this.type,
    required this.title,
    required this.options,
    required this.selectedItem,
  });

  @override
  Widget build(BuildContext context) {
    const txtStyle = TextStyle(fontFamily: 'MtgFonts', fontSize: 20);

    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Card(
        elevation: 2,
        child: Obx(
          () => Column(
            children: [
              Text(
                title.value + (selectedItem.value),
                style: txtStyle,
              ),
              Row(
                children: [
                  for (String item in options)
                    Expanded(
                      child: Obx(
                        () => RadioListTile(
                          selected: selectedItem.value == item,
                          title: Text(
                            item,
                            style: txtStyle,
                          ),
                          value: item,
                          onChanged: (value) {
                            controller.saveChanges(value: item, type: type);
                            selectedItem.value = value.toString();
                          },
                          groupValue: selectedItem.value,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
