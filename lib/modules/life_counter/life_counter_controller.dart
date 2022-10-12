import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:magic_counter_lh/core/audio_helper.dart';
import 'package:magic_counter_lh/modules/modules.dart';

import '../../contracts/contracts.dart';
import '../../core/core.dart';

class GetXLifeCounterController extends GetxController implements LifeCounter {
  final RxInt p1Score;
  final RxInt p2Score;
  RxString? orientation = 'Horizontal'.obs;

  GetXLifeCounterController({required this.p1Score, required this.p2Score}) {
    loadPrefs();
  }

  @override
  int changePlayerScore({required int player, required int value}) {
    //print("Player $player changed score in $value");
    AudioHelper.play('audio/btn2.mp3');
    return player == 1 ? (p1Score.value += value) : (p2Score.value += value);
  }

  @override
  double controlFontSize({required int player}) {
    final score = player == 1 ? p1Score.value : p2Score.value;
    return (score >= 100 || score < 0) ? 125.0 : 140.0;
  }

  @override
  int resetScore({required int player, bool? testing = false}) {
    if (testing == null || testing == false) {
      AudioHelper.play('audio/btn1.mp3');
    }

    return (player == 1)
        ? p1Score.value = Prefs.getInt(Const.MAXHP)
        : p2Score.value = Prefs.getInt(Const.MAXHP);
  }

  @override
  void openSettings() async {
    // Get.toNamed<void>(ListaVacinacoesPage.ROUTE, arguments: {'openFichasSubmissionDialog': true});
    //orientation?.value =
    final test = await Get.toNamed(SettingsPage.ROUTE);
    Future.delayed(const Duration(seconds: 1));
    orientation?.value = test.toString();
  }

  void loadPrefs() {
    orientation?.value = Prefs.getString(Const.ORIENTATION);
    debugPrint("Init Orientation ${orientation?.value}");
  }
}
