import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:magic_counter_lh/core/utils/constants.dart';
import 'package:magic_counter_lh/modules/planechase/planechase_page.dart';

import '../../contracts/settings_controller.dart';
import '../../core/core.dart';

class GetXSettingsPageController extends GetxController
    implements SettingsController {
  @override
  int? maxHP;

  @override
  int? numPlayers;

  @override
  String? orientation;

  @override
  String? soundOn;

  GetXSettingsPageController({required this.maxHP}) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    loadPreferences();
  }

  @override
  bool loadPreferences() {
    maxHP = Prefs.getInt(Const.MAXHP);
    orientation = Prefs.getString(Const.ORIENTATION);
    numPlayers = Prefs.getInt(Const.NUMPLAYERS);
    soundOn = Prefs.getString(Const.SOUNDONOFF);

    return false;
  }

  @override
  int setMaxHP(int value) {
    Prefs.setInt(Const.MAXHP, value);
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
        setOrientation(value);
        debugPrint("Orientation set to $value");
        break;
      case 3:
        setSoundOnOff(value);
        debugPrint("Sound set to $value");
        break;
      case 4:
        setNumPlayers(int.parse(value));
        debugPrint("Num of players set to $value");
        break;
    }
  }

  @override
  Future<void> setNumPlayers(int value) async {
    await Prefs.setInt(Const.NUMPLAYERS, value);
  }

  @override
  Future<void> setOrientation(String value) async {
    orientation = value;
    await Prefs.setString(Const.ORIENTATION, value);
  }

  @override
  Future<void> setSoundOnOff(String value) async {
    await Prefs.setString(Const.SOUNDONOFF, value);
  }

  @override
  void goToPlanechase() {
    Get.toNamed(PlaneChasePage.ROUTE);
  }
}
