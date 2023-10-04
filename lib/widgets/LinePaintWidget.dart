import 'package:flutter/material.dart';

class LinePaintWidget extends StatelessWidget {
  const LinePaintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        color: Colors.cyan,
        child: CustomPaint(
          foregroundPainter: LinePainter(),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10;
    
    canvas.drawLine(Offset(size.width * 0.2, size.height * 0.5),
        Offset(size.width * 0.8, size.height * 0.9), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    //throw UnimplementedError();
    return false;
  }
}
