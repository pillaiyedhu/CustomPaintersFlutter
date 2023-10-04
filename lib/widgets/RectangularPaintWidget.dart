import 'package:flutter/material.dart';

class RectangularPaintWidget extends StatelessWidget {
  const RectangularPaintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        color: Colors.black,
        child: CustomPaint(
          foregroundPainter: RectangularPainter(),
        ),
      ),
    );
  }
}

class RectangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
    ..color=Colors.cyan
    ..style= PaintingStyle.stroke
    ..strokeWidth=5
    ;
    Offset a = Offset(size.width * 0.2, size.height * 0.2);
    Offset b = Offset(size.width * 0.8, size.height * 0.8);

    Rect rect = Rect.fromPoints(a, b);

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
