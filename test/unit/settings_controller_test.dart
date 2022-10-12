import 'package:faker/faker.dart';
import 'package:magic_counter_lh/contracts/settings_controller.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

void main() {
  late SettingsController sut;

  When loadPrefsCalled() => when(() => sut.loadPreferences());
  When setMaxHPCalled(int value) => when(() => sut.setMaxHP(value));

  setUpAll(() {
    sut = SettingsPageControllerSpy();
  });

  test("Should returns true if loaded successfull", () {
    loadPrefsCalled().thenReturn(true);
    final result = sut.loadPreferences();

    expect(result, true);
  });

  test("Should returns false if loaded fails", () {
    loadPrefsCalled().thenReturn(false);
    final result = sut.loadPreferences();

    expect(result, false);
  });

  test("Should return set the max HP with the right value", () {
    final maxHP = faker.randomGenerator.integer(40);
    setMaxHPCalled(maxHP).thenReturn(maxHP);
    final result = sut.setMaxHP(maxHP);

    expect(result, maxHP);
  });
}

class SettingsPageControllerSpy with Mock implements SettingsController {}
