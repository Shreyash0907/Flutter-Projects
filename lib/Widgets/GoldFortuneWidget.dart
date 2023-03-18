import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/fortuneController.dart';
import 'BottomWidget.dart';
import 'GoldPlanWidget.dart';

class GoldFoturneWidget extends StatefulWidget {
  const GoldFoturneWidget({Key? key}) : super(key: key);

  @override
  State<GoldFoturneWidget> createState() => _GoldFoturneWidgetState();
}

class _GoldFoturneWidgetState extends State<GoldFoturneWidget> {

  final controller = Fortunecontroller();
  final bottomController = Get.put(BottomWidgetController());

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 5,
          left: 20, right: 20),
      height: size.height * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => bottomController.OnPress(),
            child: Container(
              height: 60,
              width: double.maxFinite,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFFEFC88A),
              ),
              child: Text(
                "Buy More",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 20,
            alignment: Alignment.centerLeft,
            child: Text(
              "Gold Fortune",
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF56001C),
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Container(
              height: size.height * 0.35,
              width: double.maxFinite,
              child: ListView.builder(
                itemCount: controller.fortunePlans.length,
                itemBuilder: (context,index){
                  return GoldPlanWidget(index: index,);
                },
              )
          ),
        ],
      ),
    );
  }
}
