abstract class ManaBaseCalculatorController {
  ManaBaseCalculatorController();

  Map<String, int> calculate(
      {int? black,
      int? white,
      int? blue,
      int? green,
      int? red,
      required int lands});
}
