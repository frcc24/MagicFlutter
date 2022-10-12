import '../../contracts/settings_controller.dart';

class GetXSettingsPageController implements SettingsController {
  @override
  int maxHP;

  GetXSettingsPageController({required this.maxHP});

  @override
  bool loadPreferences() {
    return false;
  }

  @override
  int setMaxHP(int value) {
    return value;
  }
}
