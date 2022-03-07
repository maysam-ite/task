import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task/constant.dart';

class Point {
  final double x;
  final double y;

  Point(this.x, this.y);
}

class BackgroundPainter extends CustomPainter {
  final Paint yellowPaint;
  BackgroundPainter()
      : yellowPaint = Paint()
          ..color = backyellow
          ..style = PaintingStyle.fill;

  @override
  void paint(Canvas canvas, Size size) {
     paintBlue(size, canvas);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;

  void paintBlue(Size size, Canvas canvas) {
    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(size.width*.3,0);
 path.quadraticBezierTo(size.width*.42, size.height*.2, 0,size.height*.37);
   
 
    canvas.drawPath(path, yellowPaint);
  }
 

  
}