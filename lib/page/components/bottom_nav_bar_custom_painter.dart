import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class BottomNavBarCustomPainter extends CustomPainter {
  final bool isPainted;
  BottomNavBarCustomPainter({this.isPainted = false});
  @override
  void paint(Canvas canvas, Size size) {
    if (isPainted == false) {
      return;
    }
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.08483525, size.height * 0.1660766);
    path_0.cubicTo(size.width * 0.1032363, size.height * 0.07007227,
        size.width * 0.1949075, 0, size.width * 0.3021025, 0);
    path_0.lineTo(size.width * 0.6978975, 0);
    path_0.cubicTo(
        size.width * 0.8050925,
        0,
        size.width * 0.8967650,
        size.height * 0.07007227,
        size.width * 0.9151650,
        size.height * 0.1660766);
    path_0.lineTo(size.width * 0.9762975, size.height * 0.4850318);
    path_0.cubicTo(
        size.width * 1.027830,
        size.height * 0.7538909,
        size.width * 0.8002000,
        size.height,
        size.width * 0.5000000,
        size.height);
    path_0.lineTo(size.width * 0.5000000, size.height);
    path_0.cubicTo(
        size.width * 0.1998000,
        size.height,
        size.width * -0.02782900,
        size.height * 0.7538909,
        size.width * 0.02370225,
        size.height * 0.4850318);
    path_0.lineTo(size.width * 0.08483525, size.height * 0.1660766);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
