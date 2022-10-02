import 'package:get/get.dart';
import 'package:magic_counter_lh/modules/life_counter/life_counter_controller.dart';
import 'package:magic_counter_lh/modules/life_counter/life_counter_page.dart';

List<GetPage> getAppPages() {
  return [
    // Initial pages
    GetPage<void>(
      name: LifeCounterPage.ROUTE,
      page: () => const LifeCounterPage(),
      binding: BindingsBuilder<void>(() => Get.lazyPut<LifeCounterController>(
          () => LifeCounterController(),
          fenix: true)),
    ),
  ];
}
