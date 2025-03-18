import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("InteractiveViewer Example")),
        body: InteractiveViewer(
          boundaryMargin: EdgeInsets.all(20), // Rasmning chegarasini biroz kengaytirish
          minScale: 0.1, // Zoom qilishning minimal miqdori
          maxScale: 3.0, // Zoom qilishning maksimal miqdori
          child: Center(
            child: Image.asset('assets/images/bear.jpg', width: 600, height: 60,)
          ),
        ),
      ),
    );
  }
}
