import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('RotatedBox Example'),
        ),
        body: Center(
          child: RotatedBox(
            /// 2 - 180, 3 - 270
            quarterTurns: 1,  // 90° burilish
            child: Container(
              color: Colors.blue,
              width: 200,
              height: 50,
              child: Center(
                child: Text(
                  'This is rotated!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
