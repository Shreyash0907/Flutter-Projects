import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/controller/Onboarding_controller.dart';

import '../BottomNavigation.dart';
class Onboarding_screen extends StatefulWidget {
  const Onboarding_screen({Key? key}) : super(key: key);

  @override
  State<Onboarding_screen> createState() => _Onboarding_screenState();
}

class _Onboarding_screenState extends State<Onboarding_screen> {
  final controller = OnboardingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        PageView.builder(
          controller: controller.pageController,
              onPageChanged: controller.OnScreenPageIndex,
                itemCount: controller.onboardingPages.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(20),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.only(right: 10),
                          width: size.width,
                          child: GestureDetector(
                            onTap: () {
                              Get.off(BottomNavigationWrapper());
                            },
                            child: Text(
                              "Skip",
                              style:
                                  TextStyle(color: Colors.grey[600], fontSize: 17),
                            ),
                          ),
                        ),
                        Container(
                          height: 300,
                          width: 300,
                          child: Image.asset(
                            controller.onboardingPages[index].image,
                            height: 150,
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                controller.onboardingPages[index].title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                controller.onboardingPages[index].descrioption,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  letterSpacing: 2,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                              onTap: (){
                                controller.toNextScreen();
                              },
                              child: Container(
                                  height: 50,
                                  width: double.maxFinite,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEFC88A),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Text(
                                    "Continue",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  )),
                            )


                      ],
                    ),
                  );
                }

        ),
        Positioned(
          bottom: 20,
          left: size.width * 0.4,
          child: Row(
            children: List.generate(
                controller.onboardingPages.length, (index) => Obx(() {
                    return Container(
              margin: EdgeInsets.all(5),
              width: controller.OnScreenPageIndex.value == index ? 20 : 12,
              height: 12,
              decoration: BoxDecoration(
                    color : controller.OnScreenPageIndex.value == index ? Colors.grey : Colors.white,
                    borderRadius: BorderRadius.circular(6),
              ),
            );
                  }
                )),
          ),
        )
      ],
    ));
  }
}
