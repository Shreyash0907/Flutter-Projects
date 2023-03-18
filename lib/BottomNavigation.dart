import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/Screens/history_screen.dart';
import 'package:task_project/Screens/home_Screen.dart';
import 'package:task_project/Screens/shop_Screen.dart';
import 'package:task_project/controller/BottomNavigation_controller.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import 'Screens/search_Screen.dart';

class BottomNavigationWrapper extends StatefulWidget {
  BottomNavigationWrapper({Key? key}) : super(key: key);

  @override
  State<BottomNavigationWrapper> createState() => _BottomNavigationWrapperState();
}

class _BottomNavigationWrapperState extends State<BottomNavigationWrapper> {
  final BottomNavigationController controller = Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageView(
        onPageChanged: (page) =>  controller.goToTab(page),
            controller: controller.pageController,
            physics: BouncingScrollPhysics(),
            children: [
              HomeScreen(),
              ShopScreen(),
              SearchScreen(),
              HistoryScreen()
            ],


      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
          child: Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  bottomAppBarItem(context, icon: Icons.home_outlined, page: 0, label: "Home"),
                  bottomAppBarItem(context, icon: Icons.shopping_bag_outlined, page: 1, label: "Shop"),
                  bottomAppBarItem(context, icon: Icons.search, page: 2, label: "Search"),
                  bottomAppBarItem(context, icon: Icons.history, page: 3, label: "History"),
                ],
              );
            }
          ),
        ),
      ),
    );
  }

  Widget bottomAppBarItem(BuildContext context,{required icon,required page, required label}){
    return ZoomTapAnimation(
      onTap: ()=> controller.goToTab(page),
      child: Container(
        color: Colors.transparent,

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon,size: 25,
            color: controller.currentIndex.value == page ? Colors.black : Colors.grey),
            Text(label,)
          ],
        ),
      ),
    );
  }
}
