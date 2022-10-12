import 'package:flutter/foundation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../contracts/settings_controller.dart';

class GetXSettingsPageController implements SettingsController {
  @override
  int maxHP;

  GetXSettingsPageController({required this.maxHP});

  @override
  bool loadPreferences() {
    return false;
  }

  @override
  int setMaxHP(int value) {
    return value;
  }

  @override
  void saveChanges({required String value, required RxInt type}) {
    int options = type.value;

    switch (options) {
      case 1:
        setMaxHP(int.parse(value));
        debugPrint("Max HP set to $value");
        break;
      case 2:
        debugPrint("Orientation set to $value");
        break;
      case 3:
        debugPrint("Sound set to $value");
        break;
      case 4:
        debugPrint("Num of players set to $value");
        break;
    }
  }
}
