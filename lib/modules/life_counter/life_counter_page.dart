import 'package:flutter/material.dart';

import 'local_widgets/player_counter.dart';

class LifeCounterPage extends StatelessWidget {
  static const ROUTE = '/life_counter_page';

  const LifeCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
    );
  }
}
