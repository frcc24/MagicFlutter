import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

class LifeCounterController extends GetxController {
  final p1Score = 20.obs;
  final p2Score = 20.obs;

  void changePlayerScore({required int player, required int value}) {
    //print("Player $player changed score in $value");
    player == 1 ? (p1Score.value += value) : (p2Score.value += value);
  }

  double controlFontSize({required int player}) {
    final score = player == 1 ? p1Score.value : p2Score.value;
    return (score >= 100 || score < 0) ? 125.0 : 140.0;
  }

  void resetScore({required int player}) {
    AudioPlayer().play(AssetSource('/audio/btn1.mp3'));
    (player == 1) ? p1Score.value = 0 : p2Score.value = 0;
  }
}
