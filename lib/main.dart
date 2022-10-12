import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:magic_counter_lh/core/audio_helper.dart';
import 'package:magic_counter_lh/modules/life_counter/life_counter_page.dart';
import 'package:magic_counter_lh/routes/pages.dart';

import 'core/sharedPreferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init(); // initialize here ! important
  await AudioHelper.init();
  runApp(MagicCounterApp());
}

class MagicCounterApp extends StatefulWidget {
  final String? initialRoute;

  MagicCounterApp({
    this.initialRoute,
  });

  @override
  State<MagicCounterApp> createState() => _MagicCounterAppState();
}

class _MagicCounterAppState extends State<MagicCounterApp>
    with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    //SharedPreferences.getInstance().then((instance) => instance.setString('appStateStatus', 'resumed'));
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    //SharedPreferences.getInstance().then((instance) => instance.setString('appStateStatus', state.toString().split('.')[1]));
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.red
          //primarySwatch: Colors.blue,
          ),
      getPages: getAppPages(),
      initialRoute: widget.initialRoute ?? LifeCounterPage.ROUTE,
    );
  }
}
