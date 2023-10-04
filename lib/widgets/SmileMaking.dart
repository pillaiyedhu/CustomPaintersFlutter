import 'package:flutter/material.dart';

class SmileMaking extends StatelessWidget {
  const SmileMaking({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        color: Colors.black,
        child: CustomPaint(
          foregroundPainter: SmilePainter(),
        ),
      ),
    );
  }
}

class SmilePainter extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    var paint2 = Paint()..color = Colors.amber;

    Offset a = Offset(size.width * 0.4, size.height * 0.4);
    Offset b = Offset(size.width * 0.6, size.height * 0.4);
    Offset c = Offset(size.width * 0.5, size.height * 0.5);
    canvas.drawCircle(c, 100, paint2);

    //Rect rect = Rect.fromPoints(a, b);
    Rect rect = Offset(90, 120) & Size(120, 80);
    //MaterialColor color = MaterialColor(Colors._amberAccentPrimaryValue);
    canvas.drawCircle(a, 10, paint);
    canvas.drawCircle(b, 10, paint);
    canvas.drawArc(rect, 0.1, 3, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
