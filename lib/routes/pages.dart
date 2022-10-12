import 'package:get/get.dart';

import '../contracts/settings_controller.dart';
import '../modules/modules.dart';

List<GetPage> getAppPages() {
  return [
    // Initial pages
    GetPage<void>(
      name: LifeCounterPage.ROUTE,
      page: () => const LifeCounterPage(),
      binding: BindingsBuilder<void>(() =>
          Get.lazyPut<GetXLifeCounterController>(
              () => GetXLifeCounterController(p1Score: 20.obs, p2Score: 20.obs),
              fenix: true)),
    ),
    GetPage<void>(
      name: SettingsPage.ROUTE,
      page: () => SettingsPage(),
      binding: BindingsBuilder<void>(() => Get.lazyPut<SettingsController>(
          () => GetXSettingsPageController(maxHP: 20),
          fenix: true)),
    ),
  ];
}
