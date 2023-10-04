import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui' as ui;

class ImagePaintWidget extends StatefulWidget {
  const ImagePaintWidget({super.key});

  @override
  State<ImagePaintWidget> createState() => _ImagePaintWidgetState();
}

class _ImagePaintWidgetState extends State<ImagePaintWidget> {
  ui.Image? image;
  @override
  void initState() {
    super.initState();
    loadImage('assets/image.jpg');
  }

  Future loadImage(String path) async {
    final data = await rootBundle.load(path);
    final bytes = data.buffer.asUint8List();
    final image = await decodeImageFromList(bytes);
    setState(() {
      this.image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return image == null?
    Center(child: Text("No data"),):
    Center(
      child: Container(
        height: 500,
        width: 500,
        child: FittedBox(
          child: SizedBox(
            height: image!.height.toDouble(),
            width: image!.width.toDouble(),
            child: CustomPaint(
              foregroundPainter: ImagePainter(image!),
            ),
          ),
        ),
      ),
    );
  }
}

class ImagePainter extends CustomPainter {
  final ui.Image image;

  ImagePainter(this.image);
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    canvas.drawImage(image, Offset.zero, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
