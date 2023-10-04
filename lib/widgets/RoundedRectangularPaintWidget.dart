import 'package:flutter/material.dart';

class RoundedRectangularPaintWidget extends StatelessWidget {
  const RoundedRectangularPaintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        color: Colors.black,
        child: CustomPaint(
          foregroundPainter: RoundedRectangularPainter(),
        ),
      ),
    );
  }
}

class RoundedRectangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color=Colors.cyan..strokeCap=StrokeCap.round..style=PaintingStyle.stroke;
    RRect rrect = RRect.fromLTRBR(size.width*0.2, size.height*0.2, size.width*0.8, size.height*0.8, Radius.circular(10));
    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
