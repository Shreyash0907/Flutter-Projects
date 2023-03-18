import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/OnboardingScreens/Onboarding_screen.dart';


class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),() => Get.offAll(Onboarding_screen()));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF5D001A),
              Color(0xFF57001B),
              Color(0xFF2D0021)
            ],
          ),
        ),
        child: Image.asset("images/logo.png",
        height: 150,
        width: 150,),
      ),
    );
  }
}
