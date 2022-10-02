import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:magic_counter_lh/modules/life_counter/life_counter_controller.dart';
import 'package:magic_counter_lh/modules/life_counter/local_widgets/score_counter_button.dart';

class PlayerScoreBoard extends GetView<LifeCounterController> {
  int player;
  PlayerScoreBoard({
    required this.player,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ScoreCounterButton(player: player, value: 1),
            ScoreCounterButton(player: player, value: -1),
          ],
        ),
        Expanded(
          child: Obx(
            () => Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  (player == 1)
                      ? "${controller.p1Score.value}"
                      : "${controller.p2Score.value}",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
                Text(
                  (player == 1)
                      ? "${controller.p1Score.value}"
                      : "${controller.p2Score.value}",
                  style: const TextStyle(
                    fontSize: 140,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ScoreCounterButton(player: player, value: 5),
            ScoreCounterButton(player: player, value: -5),
          ],
        ),
      ],
    );
  }
}
