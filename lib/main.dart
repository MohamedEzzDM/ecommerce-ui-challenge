import 'package:ecommerce/routes.dart';
import 'package:ecommerce/screens/splash/splash_screen.dart';

import 'package:ecommerce/utils/theme.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: buildThemeData(),
      routes: routes,
      initialRoute: SplashScreen.id,
    );
  }


}

