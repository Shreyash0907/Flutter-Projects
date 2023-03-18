import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class BuyGoldWidget extends StatefulWidget {
  const BuyGoldWidget({Key? key}) : super(key: key);

  @override
  State<BuyGoldWidget> createState() => _BuyGoldWidgetState();
}

class _BuyGoldWidgetState extends State<BuyGoldWidget> {

  bool status = false;

  final controller = Get.put(switchX());
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.45,
      width: size.width,
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: size.height * 0.3,
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Sell",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child:Obx(() {
                          return FlutterSwitch(
                            width: 40,
                              height: 20,
                              toggleSize: 15,
                              activeColor: Colors.green,
                              inactiveColor: Colors.red,
                              value: controller.status.value,
                              onToggle:  (val) => controller.OnChange(val),
                          );
                        }
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Buy",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black
                      ),
                    ),
                  ],
                ),
                Obx((){
                    return Container(
                      width: size.width ,
                      height: 50,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: "Rupee",
                                activeColor: Colors.black,
                                groupValue: controller.type.value,
                                onChanged: (value) => controller.OnValueChange(value),
                              ),
                              Text(
                                "Buy in Rupees ₹",
                                style: TextStyle(
                                  color: controller.type.value == "Rupee" ? Colors.black : Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                activeColor: Colors.black,
                                value: "Quantity",
                                groupValue: controller.type.value,
                                onChanged: (value) => controller.OnValueChange(value),
                              ),
                              Text(
                                "Buy in Quantity",
                                style: TextStyle(
                                  color: controller.type.value == "Quantity" ? Colors.black : Colors.grey,
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    );
                  },
                ),
                Container(
                  height:50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.black, width: 2)
                  ),
                  child: TextField(
                    maxLines: 1,
                    style: TextStyle(fontSize: 20),
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      prefixIcon:
                      Icon(Icons.currency_rupee, color: Colors.black),
                      border: InputBorder.none,
                      // focusedBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(color: Colors.black,
                      //         width: 2),
                      //     borderRadius: BorderRadius.all(Radius.circular(10)),),
                      // disabledBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.black,
                      //       width: 2),
                      //   borderRadius: BorderRadius.all(Radius.circular(10)),),
                      fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                      contentPadding: EdgeInsets.zero,
                      hintText: 'Search',

                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 70,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 2),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("+ ₹5000",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15
                      ),),
                    ),
                    Container(
                      width: 70,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 2),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("+ ₹1000",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15
                      ),),
                    ),
                    Container(
                      width: 70,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 2),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("+ ₹5000",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15
                      ),),
                    ),
                    Container(
                      width: 80,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 2),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("+ ₹10000",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15
                      ),),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 60,
            width: double.maxFinite,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xFFEFC88A),
            ),
            child: Text(
                  "Buy Gold",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )

            ),
        ],
      ),
    );
  }
}

class switchX extends GetxController{
  RxBool status = true.obs;

  RxString type = "Rupee".obs;

  void OnValueChange(val) => type.value = val;

  void OnChange(val) => status.value = val;
}
