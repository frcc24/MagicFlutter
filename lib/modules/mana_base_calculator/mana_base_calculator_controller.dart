import 'package:get/get.dart';

import '../../contracts/contracts.dart';

class ManaBaseCalcController extends GetxController
    implements ManaBaseCalculatorController {
  @override
  Map<String, int> calculate(
      {int? black,
      int? white,
      int? blue,
      int? green,
      int? red,
      required int lands}) {
    double b = 0, w = 0, u = 0, g = 0, r = 0;

    int totalManaCost =
        (blue ?? 0) + (black ?? 0) + (white ?? 0) + (green ?? 0) + (red ?? 0);

    if (totalManaCost > 0) {
      b = ((black ?? 0) / totalManaCost) * lands;
      u = ((blue ?? 0) / totalManaCost) * lands;
      w = ((white ?? 0) / totalManaCost) * lands;
      g = ((green ?? 0) / totalManaCost) * lands;
      r = ((red ?? 0) / totalManaCost) * lands;
    }

    final result = {
      'black': b.round(),
      'white': w.round(),
      'blue': u.round(),
      'green': g.round(),
      'red': r.round(),
    };

    return result;
  }
}
