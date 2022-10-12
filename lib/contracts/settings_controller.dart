abstract class SettingsController {
  int maxHP;

  SettingsController({required this.maxHP});

  bool loadPreferences();

  int setMaxHP(int value);
}
