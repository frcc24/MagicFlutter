import 'package:get/get_rx/src/rx_types/rx_types.dart';

abstract class SettingsController {
  int? maxHP;
  String? orientation;
  int? numPlayers;
  String? soundOn;

  SettingsController({
    required this.maxHP,
  });

  bool loadPreferences();

  int setMaxHP(int value);

  Future<void> setOrientation(String value);

  Future<void> setNumPlayers(int value);

  Future<void> setSoundOnOff(String value);

  void saveChanges({required String value, required RxInt type});
}
