import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:magic_counter_lh/modules/life_counter/life_counter_controller.dart';
import 'package:magic_counter_lh/modules/life_counter/local_widgets/score_counter_button.dart';

class PlayerScoreBoard extends GetView<GetXLifeCounterController> {
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
          child: MidColumn(player: player, controller: controller),
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

class MidColumn extends StatelessWidget {
  const MidColumn({
    Key? key,
    required this.player,
    required this.controller,
  }) : super(key: key);

  final int player;
  final GetXLifeCounterController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            (player == 1)
                ? "Opponent Life ${controller.p2Score.value}"
                : "Opponent Life ${controller.p1Score.value}",
            style: const TextStyle(
              fontSize: 20,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
              fontFamily: 'MtgFonts',
            ),
          ),
          Text(
            (player == 1)
                ? "${controller.p1Score.value}"
                : "${controller.p2Score.value}",
            style: TextStyle(
              fontSize: controller.controlFontSize(player: player),
              fontWeight: FontWeight.bold,
              color: Colors.white70,
              fontFamily: 'MtgFonts',
            ),
          ),
          TextButton(
              onPressed: () {
                controller.resetScore(player: player);
              },
              child: Text(
                "Reset",
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 3,
                  color: Colors.blueAccent.withAlpha(90),
                  fontFamily: 'MtgFonts',
                ),
              ))
        ],
      ),
    );
  }
}
