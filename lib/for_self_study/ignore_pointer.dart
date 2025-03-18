import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("IgnorePointer Example")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print("Tugma bosildi!");
                },
                child: Text("Bosish mumkin bo'lgan tugma"),
              ),
              SizedBox(height: 20),
              IgnorePointer(
                ignoring: true, // Interaktivlikni bloklash
                child: ElevatedButton(
                  onPressed: () {
                    print("Bu tugma bosilmaydi!");
                  },
                  child: Text("Bosilmaydigan tugma"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
