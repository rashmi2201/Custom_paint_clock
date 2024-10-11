import 'package:flutter/material.dart';
import 'package:flutter_custom_paint/custom_clock.dart';

class CustomScreen extends StatefulWidget {
  const CustomScreen({super.key});

  @override
  State<CustomScreen> createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(
          'Custom Paint',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.grey.shade300,
          child: CustomPaint(
            painter: Masterpainter(),
            size: Size(370, 700),
          ),
        ),
      ),
    
    );
  }
}

class Masterpainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.strokeWidth = 2;
    paint.color = Colors.black;

    // For stroke of circle
    paint.style = PaintingStyle.stroke;

    Offset center = Offset(size.width / 2, size.height / 2);

    // For drawing a line
    canvas.drawLine(Offset.zero, Offset(0, size.height), paint);

    // For circle paint
    canvas.drawCircle(Offset(size.width / 4, size.height / 2), 26, paint);

    // For rectangle
    canvas.drawRect(
        Rect.fromCenter(center: center, width: 100, height: 200), paint);

    // For square
    canvas.drawRect(Rect.fromCircle(center: center, radius: 150), paint);

    // For oval
    canvas.drawOval(Rect.fromLTRB(10, 20, 100, 200), paint);

    // Variable
    Rect rect = Rect.fromLTRB(200, 300, 300, 160);

    // For rectangle and radius
    canvas.drawRRect(RRect.fromRectAndRadius(rect, Radius.circular(10)), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
