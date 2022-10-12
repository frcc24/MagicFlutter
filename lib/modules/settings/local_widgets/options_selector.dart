import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../contracts/contracts.dart';

class OptionSelector extends GetView<SettingsController> {
  RxString title;
  RxString selectedItem;
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
                title.value,
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
