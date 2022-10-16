import 'package:flutter/cupertino.dart';
import "package:flutter/services.dart" as s;
import 'package:flutter_test/flutter_test.dart';
import "package:yaml/yaml.dart";

void main() {
  setUpAll(() {
    WidgetsFlutterBinding.ensureInitialized();
  });

  test("Should read yaml file", () async {
    final data = await s.rootBundle.loadString('assets/audio/rules.yaml');
    final mapData = loadYaml(data);
    print(mapData);
    print(mapData);
  });
}
