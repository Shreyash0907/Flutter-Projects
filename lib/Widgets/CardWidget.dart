import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: size.height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0xFFFFDB95),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: size.height * 0.12,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: size.width * 0.5,
                  height: size.height * 0.11,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Gold Value",
                        style: TextStyle(
                          color: Color(0xFF5C5C5C),
                          fontSize: 15,
                        ),
                      ),
                      Container(
                        height: size.height * 0.06,
                        width: size.width * 0.45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("₹",style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF51001C),
                            ),),
                            Text("8,900",style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                                color: Color(0xFF51001C)
                            ),),
                            Text("+12%",style: TextStyle(
                              fontSize: 15,
                                color: Color(0xFF51001C)
                            ),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.2,
                  height: size.height * 0.11,
                  child: Image.asset("images/image7.png",fit: BoxFit.fill,),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            width: size.width * 0.75,
            color: Color(0xFFD3B17C),
          ),
          Container(
            height: size.height * 0.12,
            width: size.width * 0.8,
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height : size.height * 0.09,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: size.width * 0.40,
                        height: size.height * 0.07,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height : size.height * 0.02,
                              child: Text(
                                "Invested",
                                style: TextStyle(
                                  color: Color(0xFF5C5C5C),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              height: size.height * 0.048,
                              width: size.width * 0.45,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("₹",style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xFF51001C),
                                  ),),
                                  Text("54,000",style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF51001C)
                                  ),),
                                  Text("10grms",style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF51001C)
                                  ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width * 0.25,
                        height: size.height * 0.07,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height : size.height * 0.02,
                              child: Text(
                                "Current NAV",
                                style: TextStyle(
                                  color: Color(0xFF5C5C5C),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              height: size.height * 0.045,
                              width: size.width * 0.3,
                              child: Text("58,900",style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF51001C)
                              ),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 20,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "* Current Gold Value 10 grms = 54,000₹",
                    style: TextStyle(
                      color: Color(0xFF5C5C5C),
                      fontSize: 12,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
