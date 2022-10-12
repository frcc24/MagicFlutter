import 'dart:math';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../core/core.dart';

class PlaneChaseController extends GetxController {
  var rng = Random();
  var page = 1.obs;

  PlaneChaseController() {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
  }

  void changePage() {
    if (page.value < planes.length) {
      page.value += 1;
      print(page.value);
    } else {
      page.value = 1;
    }
  }
}
