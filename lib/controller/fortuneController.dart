import 'package:get/get.dart';

import '../model/FortuneModel.dart';

class Fortunecontroller extends GetxController{
  List<fortuneInfo> fortunePlans = [
    fortuneInfo("Gold Savings Plan", '''Start your Gold Savings Plan\nwith our Create Your Own Plan''', "Create a Plan ", "images/star1.png"),
    fortuneInfo("Upload Your Gold", '''Start your Gold Savings Plan\nwith our Create Your Own Plan''', "Create a Plan ", "images/image2.png")
  ];
}