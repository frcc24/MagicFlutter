import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:magic_counter_lh/modules/planechase/planechase_controller.dart';

import '../../core/core.dart';

class PlaneChasePage extends GetView<PlaneChaseController> {
  static String ROUTE = '/planechase';

  PlaneChasePage() {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

        Get.back();
        // Get.toNamed(LifeCounterPage.ROUTE);
        return false;
      },
      child: GestureDetector(
        onTap: controller.changePage,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Planechase'),
          ),
          body: Container(
            color: Colors.white,
            child: Obx(
              () => Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.network(
                    planes[controller.page.value]!,
                    fit: BoxFit.fitHeight,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            planesText[controller.page.value] ?? '',
                            overflow: TextOverflow.clip,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            planesChaosText[controller.page.value] ?? '',
                            overflow: TextOverflow.clip,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.red,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
