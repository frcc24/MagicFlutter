import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'life_counter_controller.dart';
import 'local_widgets/player_counter.dart';

class LifeCounterPage extends GetView<GetXLifeCounterController> {
  static const ROUTE = '/life_counter_page';

  const LifeCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final scoreHorizontal = preferences.getDouble('scoreHorizontal');

    return Scaffold(
      body: Stack(
        children: [
          VerticalScoreBoard(),
          //if (scoreHorizontal) HorizontalScoreBoard() else VerticalScoreBoard(),
          Center(
            child: IconButton(
                splashColor: Colors.blueAccent,
                icon: const Icon(
                  Icons.settings,
                  color: Colors.white70,
                  size: 28,
                ),
                onPressed: controller.openSettings),
          ),
        ],
      ),
    );
  }
}

class HorizontalScoreBoard extends StatelessWidget {
  const HorizontalScoreBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2,
          color: Colors.red,
          child: PlayerScoreBoard(player: 1),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2,
          color: Colors.black87,
          child: PlayerScoreBoard(player: 2),
        ),
      ],
    );
  }
}

class VerticalScoreBoard extends StatelessWidget {
  const VerticalScoreBoard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.rotate(
          alignment: Alignment.center,
          angle: 3.14,
          child: Container(
            height: MediaQuery.of(context).size.height / 2,
            color: Colors.red,
            child: PlayerScoreBoard(player: 1),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 2,
          color: Colors.black87,
          child: PlayerScoreBoard(player: 2),
        ),
      ],
    );
  }
}
