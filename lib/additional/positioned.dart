import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Positioned Example")),
        body: Stack(
          children: [
            Positioned(
              top: 50, // Y = 50
              left: 30, // X = 30
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 150, // Y = 150
              right: 30, // X = ekranning o'ng tomonidan 30 piksel
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
            Positioned(
              bottom: 50, // Y = pastki qismidan 50 piksel
              left: 100, // X = 100
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
