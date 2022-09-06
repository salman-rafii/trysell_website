import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:trysell_website/screens/main/main_screen.dart';
import 'package:trysell_website/screens/routes/routes.dart';
import 'package:url_strategy/url_strategy.dart';

import 'constants.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // setPathUrlStrategy();

  runApp(
    RobotDetector(
      debug: false,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorObservers: [seoRouteObserver],
      debugShowCheckedModeBanner: false,
      title: 'Trysell',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kBodyTextColor),
          bodyText2: TextStyle(color: kBodyTextColor),
          headline5: TextStyle(color: kDarkBlackColor),
        ),
      ),
      home: const MainScreen(),
      initialRoute: "/",
      getPages: Routes.routes,
    );
  }
}
