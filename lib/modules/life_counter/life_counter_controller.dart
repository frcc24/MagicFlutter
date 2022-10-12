import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:magic_counter_lh/modules/modules.dart';

import '../../contracts/contracts.dart';

class GetXLifeCounterController extends GetxController implements LifeCounter {
  final RxInt p1Score;
  final RxInt p2Score;

  GetXLifeCounterController({required this.p1Score, required this.p2Score});

  @override
  int changePlayerScore({required int player, required int value}) {
    //print("Player $player changed score in $value");
    return player == 1 ? (p1Score.value += value) : (p2Score.value += value);
  }

  @override
  double controlFontSize({required int player}) {
    final score = player == 1 ? p1Score.value : p2Score.value;
    return (score >= 100 || score < 0) ? 125.0 : 140.0;
  }

  @override
  int resetScore({required int player, bool? testing}) {
    if (testing != null && testing == false) {
      AudioPlayer().play(AssetSource('audio/btn1.mp3'));
    }

    return (player == 1) ? p1Score.value = 20 : p2Score.value = 20;
  }

  @override
  void openSettings() {
    // Get.toNamed<void>(ListaVacinacoesPage.ROUTE, arguments: {'openFichasSubmissionDialog': true});
    Get.toNamed<void>(SettingsPage.ROUTE);
  }
}
