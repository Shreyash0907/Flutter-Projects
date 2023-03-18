import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import '../Widgets/BottomWidget.dart';
import '../Widgets/CardWidget.dart';
import '../Widgets/HeaderWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: CustomPaint(
          painter : Painter(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.height * 0.4,
                  child: Column(
                    children: [
                      HeaderWidget(),
                      CardWidget(),
                    ],
                  ),
                ),
                BottomWidget(),
              ],
            ),
          ),
        ),
    );
  }
}


class Painter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();
    Path ellipse = Path();
    ellipse.lineTo(0, height*0.25);
    ellipse.quadraticBezierTo(width * 0.5, height * 0.35, width, height*0.25);
    ellipse.lineTo(width, 0);
    ellipse.close();
    paint.shader = ui.Gradient.linear(Offset(width*0.2 , 0), Offset(width*0.5,height*0.35), [
      Color(0xFF5D001A),
      Color(0xFF360020),
    ]);
    canvas.drawPath(ellipse, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
  
}
