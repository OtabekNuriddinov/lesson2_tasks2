import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Absorb Pointer Misol")),
        body: Center(
          child: AbsorbPointer(
            absorbing: true, // absorbing = true: foydalanuvchi interaksiyasi bloklanadi
            child: ElevatedButton(
              onPressed: () {
                print("Button bosildi!");
              },
              child: Text("Meni bosing"),
            ),
          ),
        ),
      ),
    );
  }
}
