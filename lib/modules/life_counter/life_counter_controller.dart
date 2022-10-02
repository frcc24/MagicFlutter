import 'package:get/get.dart';

class LifeCounterController extends GetxController {
  final p1Score = 20.obs;
  final p2Score = 20.obs;

  void changePlayerScore({required int player, required int value}) {
    //print("Player $player changed score in $value");
    player == 1 ? (p1Score.value += value) : (p2Score.value += value);
  }
}
