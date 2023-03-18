import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/Widgets/BuyGoldWidget.dart';
import 'package:task_project/Widgets/GoldFortuneWidget.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {

  final bottomController = Get.put(BottomWidgetController());
  Widget getWidget(val){
    if(val == true){
      return BuyGoldWidget();
    }else{
      return GoldFoturneWidget();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return getWidget(bottomController.type.value);
    }
      );
  }
}

class BottomWidgetController extends GetxController{
  RxBool type = false.obs;

  void OnPress() => type.value =  type.value == true ? false : true;
}

