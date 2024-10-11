import 'package:flutter/material.dart';
import 'package:flutter_custom_paint/clock_view.dart';

class CustomClock extends StatefulWidget {
  const CustomClock({super.key});

  @override
  State<CustomClock> createState() => _CustomClockState();
}

class _CustomClockState extends State<CustomClock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.watch_later),
        backgroundColor: Colors.cyanAccent.shade100,
        title: Text('TAP YOUR MOMENT'),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Color(0xFF2D2F41),
        child: ClockView(
          currentHour: DateTime.now().hour % 12,  // Get the current hour
        ),
      ),
    );
  }
}
