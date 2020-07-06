import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/HomePage.dart';
import 'Screens/OnBoarding_Screens.dart';

int initScreen;

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = await preferences.getInt("initScreen");
  await preferences.setInt("initScreen", 1);
  print('initScreen ${initScreen}');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);

    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Hpsimplified"
      ),
      debugShowCheckedModeBanner: false,

      // OnBoarding open one time
      initialRoute: initScreen == 0 || initScreen == null ? "first" : "/",
      routes: {
        '/': (context) => HomePage(),
        "first": (context) => OnBoarding_Screen(),
      },
    );
  }
}

