import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Well(),
    );
  }
}

class Well extends StatefulWidget {
  const Well({super.key});

  @override
  State<Well> createState() => _WellState();
}

class _WellState extends State<Well> {
  double height = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/village.jpg'))),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: Draggable(
                  data: 10,
                  feedback: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/bucket2.png'),
                    )),
                  ),
                  childWhenDragging: WellWidget(),
                  child: WellWidget(),
                ),
              ),
              DragTarget(
                builder: (BuildContext context, List<int?> accepted,
                    List<dynamic> rejected) {
                  return Container(
                    height: 160,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border(
                            right: BorderSide(color: Colors.black, width: 2),
                            left: BorderSide(color: Colors.black, width: 2),
                            bottom: BorderSide(color: Colors.black, width: 2))),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 120,
                        height: height,
                        color: Colors.blue,
                      ),
                    ),
                  );
                },
                onAcceptWithDetails: (DragTargetDetails<int> details) {
                  setState(() {
                    height += 10;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WellWidget extends StatelessWidget {
  const WellWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 180,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/images/well2.png'))),
    );
  }
}
