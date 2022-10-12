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
                  title: "Select Max HP".obs,
                  options: ["20", "30", "40"],
                  selectedItem: "20".obs,
                ),
                OptionSelector(
                  title: "Sound ON/OFF".obs,
                  options: ["ON", "OFF"],
                  selectedItem: "OFF".obs,
                ),
                OptionSelector(
                  title: "Players".obs,
                  options: ["2", "3", "4"],
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

  List<String> options;

  OptionSelector({
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
                            controller.setMaxHP(int.parse(item));
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
