import 'package:flutter/material.dart';
import 'secondScreen.dart';
import 'package:get/get.dart';
import 'firstScreen.dart';
import 'homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const MyHomePage(),transition: Transition.leftToRight),
        GetPage(name: "/first", page: () => const FirstScreen(),transition: Transition.rightToLeft),
        GetPage(name: "/second", page: () => const SecondScreen(),transition: Transition.downToUp),
      ],
      title: 'Getx Demo',
      // home: MyHomePage(),
    );
  }
}
