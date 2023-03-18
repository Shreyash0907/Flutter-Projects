import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_project/BottomNavigation.dart';
import '../model/Onboarding_info.dart';

class OnboardingController extends GetxController{

  RxInt OnScreenPageIndex = 0.obs;
  PageController pageController = PageController(initialPage: 0);

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  void toNextScreen(){
    OnScreenPageIndex.value = OnScreenPageIndex.value + 1;
    if(OnScreenPageIndex.value == 3){
      Get.off(BottomNavigationWrapper());
    }
    pageController.jumpToPage(OnScreenPageIndex.value);
  }

  List<OnboargingInfo> onboardingPages = [
    OnboargingInfo("images/star.png", "•Buy •Sell •Redeem", '''You can buy, sell, earn, and\n  redeem all in one place.'''),
    OnboargingInfo("images/shield.png", "100% Security", '''We are a registered online platform
which was trusted by 10 Lac users.'''),
    OnboargingInfo("images/interest.png", "Earn Interest", '''Earn interest of up to 14%*
into your wallet directly'''),
  ];

}