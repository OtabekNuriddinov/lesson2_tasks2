import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onHorizontalDragDown: (DragDownDetails details){
            debugPrint("Work onHorizontalDragDown");
            debugPrint("Global Position: ${details.globalPosition}");
            debugPrint("Local Position: ${details.localPosition}\n");
          },

          onHorizontalDragStart: (DragStartDetails details){
            debugPrint("Work onHorizontalDragStart");
            debugPrint("Work onHorizontalDragStart");
            debugPrint("Name: ${details.kind?.name}");
            debugPrint("Source Time Stamp: ${details.sourceTimeStamp}");
            debugPrint("Global Position: ${details.globalPosition}");
            debugPrint("Local Position: ${details.localPosition}\n");
          },

          onHorizontalDragUpdate: (DragUpdateDetails details){
            debugPrint("Work onHorizontalDragUpdate");
            debugPrint("Global Position: ${details.globalPosition}");
            debugPrint("Local Position: ${details.localPosition}");
            debugPrint("Source Time Stamp: ${details.sourceTimeStamp}");
            debugPrint("Primary Delta: ${details.primaryDelta}");
            debugPrint("Delta: ${details.delta}\n");
          },

          onHorizontalDragEnd: (DragEndDetails details){
            debugPrint("Work onHorizontalDrag End");
            debugPrint("Global Position: ${details.globalPosition}");
            debugPrint("Local Position: ${details.localPosition}\n");
            debugPrint("Velocity => Pixels Per Second: ${details.velocity.pixelsPerSecond}");
            debugPrint("Primary Velocity: ${details.primaryVelocity}");
          },

          onHorizontalDragCancel: (){
            debugPrint("Work onHorizontalDragEnd");

          },
          child: Container(
            height: 250,
            width: 250,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}
