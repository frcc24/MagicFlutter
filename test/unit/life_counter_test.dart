import 'package:faker/faker.dart';
import 'package:get/get.dart';
import 'package:magic_counter_lh/modules/life_counter/life_counter_controller.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockLifeCounterController with Mock implements GetXLifeCounterController {
}

void main() {
  late GetXLifeCounterController sut;
  var ptsP1 = 20;
  var ptsP2 = 20;

  setUpAll(() {
    sut = GetXLifeCounterController(p1Score: 0.obs, p2Score: 0.obs);
  });

  test("Should call changePlayerScore p1 with the  right values", () {
    ptsP1 = sut.p1Score.value;
    final value = faker.randomGenerator.integer(20);

    final pointsP1 = sut.changePlayerScore(player: 1, value: value);

    expect(pointsP1, ptsP1 + value);
  });

  test("Should call resetScore p1", () {
    final pointsP1 = sut.resetScore(player: 1, testing: true);

    expect(pointsP1, 20);
  });
  test("Should call changePlayerScore p2 with the  right values", () {
    ptsP2 = sut.p2Score.value;
    final value = faker.randomGenerator.integer(20);

    final pointsP2 = sut.changePlayerScore(player: 2, value: value);

    expect(pointsP2, ptsP2 + value);
  });

  test("Should call resetScore p2", () {
    final pointsP2 = sut.resetScore(player: 2, testing: true);

    expect(pointsP2, 20);
  });
}
