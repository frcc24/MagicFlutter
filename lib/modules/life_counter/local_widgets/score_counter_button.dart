import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:magic_counter_lh/modules/life_counter/life_counter_controller.dart';

class ScoreCounterButton extends GetView<LifeCounterController> {
  int value;
  int player;

  ScoreCounterButton({
    required this.value,
    required this.player,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: player == 1
              ? Colors.red.withAlpha(80)
              : Colors.grey.withAlpha(80),
        ),
        onPressed: () {
          controller.changePlayerScore(player: player, value: (value));
        },
        child: Text(
          value > 0 ? "+$value" : "$value",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.white70,
          ),
        ),
      ),
    );
  }
}
