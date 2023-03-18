import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/BottomNavigation.dart';
import 'package:task_project/OnboardingScreens/Screen1.dart';
import 'package:task_project/Screens/home_Screen.dart';

import 'OnboardingScreens/Onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: "/", page:()=> Screen1()),
        GetPage(name: "/screen2", page:()=> Onboarding_screen(),transition: Transition.zoom),
        GetPage(name: "/home", page:()=> HomeScreen()),
      ],
      title: "TaskProject",
    );
  }
}
