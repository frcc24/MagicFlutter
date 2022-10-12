import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'life_counter_controller.dart';
import 'local_widgets/player_counter.dart';

class LifeCounterPage extends GetView<GetXLifeCounterController> {
  static const ROUTE = '/life_counter_page';

  const LifeCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Stack(
          children: [
            (controller.orientation?.value != 'Vertical')
                ? HorizontalScoreBoard()
                : VerticalScoreBoard(),
            Center(
              child: IconButton(
                  splashColor: (controller.orientation?.value != 'Vertical')
                      ? Colors.blueAccent
                      : Colors.grey,
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white70,
                    size: 28,
                  ),
                  onPressed: controller.openSettings),
            ),
            Text(controller.orientation?.value ?? ''),
          ],
        ),
      ),
    );
  }
}

class HorizontalScoreBoard extends StatelessWidget {
  HorizontalScoreBoard({
    Key? key,
  }) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  }

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
  VerticalScoreBoard({
    Key? key,
  }) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

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
