import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.12,
      width: size.width,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size.width * 0.1,
            margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white
            ),
            alignment: Alignment.center,
            child: Icon(Icons.person,),
          ),
          Container(
            width: size.width * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      child: Text("Hi Padma! ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),
                    ),
                    Container(
                      width: 20,
                      child: Image.asset("images/waving_hand.png",
                      fit: BoxFit.contain,),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("Welcome to",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),),
                    SizedBox(width: 7,),
                    Text("BKS MYGOLD",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: size.width * 0.1,
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
            ),
            alignment: Alignment.center,
            child: Image.asset("images/Scan.png"),
          ),
        ],
      ),
    );
  }
}
