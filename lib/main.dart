/*
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hide_app/core/utils/constants/string_variables.dart';
import 'package:hide_app/core/utils/routers/go_router_app.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); //this line to initialize the Firebase
  await Hive.initFlutter(); //this line to initialize the Hive
  await Hive.openBox(kOpenBox);
  //why should i open the box for first time in main.dart, because you say to Hive(ready to read and write data that were be inside box)
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.bottom],
  );
  runApp(const HideImages());
}

class HideImages extends StatelessWidget {
  const HideImages({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: GoRouterApp.router,
    );
  }
}
*/
