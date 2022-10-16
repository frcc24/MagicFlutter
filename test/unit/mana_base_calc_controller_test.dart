import 'package:faker/faker.dart';
import 'package:magic_counter_lh/contracts/mana_base_calculator_controller.dart';
import 'package:magic_counter_lh/modules/mana_base_calculator/mana_base_calculator_controller.dart';
import 'package:test/test.dart';

void main() {
  late ManaBaseCalculatorController sut;

  setUpAll(() {
    sut = ManaBaseCalcController();
  });

  test("Should return zero if no colors", () {
    var result = sut.calculate(lands: faker.randomGenerator.integer(60));
    expect(result, {
      'black': 0,
      'white': 0,
      'blue': 0,
      'green': 0,
      'red': 0,
    });
  });

  test("Should return the right calculation for any combination of colors", () {
    var result = sut.calculate(
        red: faker.randomGenerator.integer(60),
        black: faker.randomGenerator.integer(60),
        lands: faker.randomGenerator.integer(60));

    expect(result, {
      'black': anything,
      'white': 0,
      'blue': 0,
      'green': 0,
      'red': anything,
    });

    result = sut.calculate(
        red: faker.randomGenerator.integer(60),
        black: null,
        blue: faker.randomGenerator.integer(60),
        white: faker.randomGenerator.integer(60),
        green: faker.randomGenerator.integer(60),
        lands: faker.randomGenerator.integer(60));

    expect(result, {
      'black': 0,
      'white': anything,
      'blue': anything,
      'green': anything,
      'red': anything,
    });
  });

  test("Should return the right calculation for all colors", () {
    var result = sut.calculate(
        red: faker.randomGenerator.integer(60),
        black: faker.randomGenerator.integer(60),
        blue: faker.randomGenerator.integer(60),
        white: faker.randomGenerator.integer(60),
        green: faker.randomGenerator.integer(60),
        lands: faker.randomGenerator.integer(60));

    expect(result, {
      'black': anything,
      'white': anything,
      'blue': anything,
      'green': anything,
      'red': anything,
    });
  });

  test("Should return the same number if only 1 color", () {
    final numLands = faker.randomGenerator.integer(60);

    var result = sut.calculate(
        red: faker.randomGenerator.integer(60),
        black: null,
        blue: null,
        white: null,
        green: null,
        lands: numLands);

    expect(result, {
      'black': 0,
      'white': 0,
      'blue': 0,
      'green': 0,
      'red': numLands,
    });
  });
}
