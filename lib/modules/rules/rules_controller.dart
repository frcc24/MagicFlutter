import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as s;
import 'package:get/get.dart';
import 'package:yaml/yaml.dart';

class RulesController extends GetxController {
  late dynamic mapData;
  RxBool isLoading = false.obs;

  RulesController() {
    readAsset();
  }

  void readAsset() async {
    isLoading.value = true;
    final data = await s.rootBundle.loadString('assets/audio/rules.yaml');
    mapData = await loadYaml(data);
    await Future<void>.delayed(const Duration(milliseconds: 500));
    isLoading.value = false;
  }

  List<Widget> getList({required String from}) {
    List<Widget> list = <Widget>[];
    final content = (mapData['Glossary']['1. Game Concepts'][from]);
    try {
      content.forEach((title) {
        list.add(
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text('$title'),
            ),
          ),
        );
      });
    } catch (e) {
      debugPrint(e.toString());
    }

    return list;
  }

  List<Widget> getListParts({required String from}) {
    List<Widget> list = <Widget>[];
    final content = (mapData['Glossary']['2. Parts of a Card'][from]);

    content.forEach((title) {
      list.add(
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text('$title'),
          ),
        ),
      );
    });

    return list;
  }

  List<Widget> getListSection({required String from, required String section}) {
    List<Widget> list = <Widget>[];
    final content = (mapData['Glossary'][section][from]);

    content.forEach((title) {
      list.add(
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text('$title'),
          ),
        ),
      );
    });

    return list;
  }

  String getDateLastUpdate() {
    final list = [];
    final content = (mapData['Date']);
    content.forEach((title) {
      list.add(title);
    });
    return list.elementAt(0);
  }
}
