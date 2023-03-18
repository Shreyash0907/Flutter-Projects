import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_project/controller/fortuneController.dart';

class GoldPlanWidget extends StatefulWidget {
  final index;
  const GoldPlanWidget({Key? key, this.index}) : super(key: key);

  @override
  State<GoldPlanWidget> createState() => _GoldPlanWidgetState(index);
}

class _GoldPlanWidgetState extends State<GoldPlanWidget> {
  final index;
  final controller = Get.put(Fortunecontroller());

  _GoldPlanWidgetState(this.index);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      width: size.width,
      margin: EdgeInsets.symmetric(vertical:5 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size.width * 0.65,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height * 0.05,
                  child: Text(
                    controller.fortunePlans[index].title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.1,
                  child: Text(
                    controller.fortunePlans[index].description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15
                    ),
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  height: 40,
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFF4E001D),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    controller.fortunePlans[index].buttonText,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Image.asset(controller.fortunePlans[index].image,
            height: 50,
            width: 50,),
          ),
        ],
      ),

    );
  }
}
