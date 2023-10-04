import 'package:flutter/material.dart';

class CircularPaintWidget extends StatelessWidget {
  const CircularPaintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        color: Colors.black,
        child: CustomPaint(
          foregroundPainter: CircularPainter(),
        ),
      ),
    );
  }
}

class CircularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color=Colors.blue;
    Offset c = Offset(size.width*0.5,size.height*0.5);

    canvas.drawCircle(c, 100, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
