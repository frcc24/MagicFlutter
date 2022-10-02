import 'package:flutter/material.dart';

import 'local_widgets/player_counter.dart';

class LifeCounterPage extends StatelessWidget {
  static const ROUTE = '/life_counter_page';

  const LifeCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
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
          ),
          Center(
            child: IconButton(
              splashColor: Colors.blueAccent,
              icon: const Icon(
                Icons.settings,
                color: Colors.white70,
                size: 28,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
