import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("FractionalTranslation Example")),
        body: Center(
          child: FractionalTranslation(
            translation: Offset(0.3, 0.2), // X = 30%, Y = 20% miqdorda siljitish
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
