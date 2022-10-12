import 'package:get/get_rx/src/rx_types/rx_types.dart';

abstract class SettingsController {
  int maxHP;

  SettingsController({required this.maxHP});

  bool loadPreferences();

  int setMaxHP(int value);

  void saveChanges({required String value, required RxInt type});
}
