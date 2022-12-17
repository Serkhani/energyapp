import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:get/get.dart';

class SignInSectionView extends GetView {
  const SignInSectionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: CustomPaint(
          painter: CirclePainter(),
          willChange: false,
          child: Padding(
            padding: EdgeInsets.only(
              left: Get.width * 0.1,
              top: Get.height * 0.15),
            child: Text('Sign In',
            style: Theme.of(context).textTheme.titleLarge,),
          ),
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.white24;
    Rect rect = Rect.fromCircle(
        center: Offset(size.width * 0.8, 0.0), radius: size.width * 0.2);
    Rect rect2 = Rect.fromCircle(
        center: Offset(size.width * 0.9, size.height * 0.1),
        radius: size.width * 0.2);
    canvas.drawArc(rect, 0.0, math.pi, true, paint);
    canvas.drawArc(rect2, 0.0, math.pi * 2, true, paint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CirclePainter oldDelegate) => false;
}
