import 'package:get/get.dart';
import 'package:magic_counter_lh/core/sharedPreferences.dart';
import 'package:magic_counter_lh/core/utils/constants.dart';

import '../contracts/settings_controller.dart';
import '../modules/modules.dart';

List<GetPage> getAppPages() {
  return [
    // Initial pages
    GetPage<void>(
      name: LifeCounterPage.ROUTE,
      page: () => LifeCounterPage(),
      binding: BindingsBuilder<void>(() =>
          Get.lazyPut<GetXLifeCounterController>(
              () => GetXLifeCounterController(
                  p1Score: Prefs.getInt(Const.MAXHP).obs,
                  p2Score: Prefs.getInt(Const.MAXHP).obs),
              fenix: true)),
    ),
    GetPage<void>(
      name: SettingsPage.ROUTE,
      page: () => SettingsPage(),
      binding: BindingsBuilder<void>(() => Get.lazyPut<SettingsController>(
          () => GetXSettingsPageController(maxHP: 20),
          fenix: true)),
    ),
    GetPage<void>(
      name: PlaneChasePage.ROUTE,
      page: () => PlaneChasePage(),
      binding: BindingsBuilder<void>(() => Get.lazyPut<PlaneChaseController>(
          () => PlaneChaseController(),
          fenix: true)),
    ),
    GetPage<void>(
      name: ManaBaseCalculatorPage.ROUTE,
      page: () => ManaBaseCalculatorPage(),
      binding: BindingsBuilder<void>(() => Get.lazyPut<ManaBaseCalcController>(
          () => ManaBaseCalcController(),
          fenix: true)),
    ),
    GetPage<void>(
      name: RulesPage.ROUTE,
      page: () => RulesPage(),
      binding: BindingsBuilder<void>(() =>
          Get.lazyPut<RulesController>(() => RulesController(), fenix: true)),
    ),
  ];
}
