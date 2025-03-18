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
  double _scale = 1.0;
  double _previousScale = 1.0;
  double _rotation = 0.0;
  final double _previousRotation = 0.0;

  void _onScaleUpdate(ScaleUpdateDetails details){
    setState(() {
      _scale = _previousScale * details.scale;

      _rotation = _previousRotation * details.rotation;
    });
  }

  void _onScaleEnd(ScaleEndDetails details){
    setState(() {
      _previousScale = _scale;

      double quarterTurns = (_rotation/(3.14/2)).roundToDouble();
      _rotation = quarterTurns * (3.14/2);
      _previousScale = _rotation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onScaleUpdate: _onScaleUpdate,
          onScaleEnd: _onScaleEnd,
          child: Transform(
              transform: Matrix4.identity()
                  ..scale(_scale)
                  ..rotateZ(_rotation),
            alignment: Alignment.center,
            child: Image.asset('assets/images/bear.jpg', width: 300, height: 300),
          ),
        ),
      )
    );
  }
}
