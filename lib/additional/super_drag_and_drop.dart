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
          title: Text("Super Drag and Drop Example"),
        ),
        body: SuperDragAndDrop(),
      ),
    );
  }
}

class SuperDragAndDrop extends StatefulWidget {
  const SuperDragAndDrop({super.key});

  @override
  _SuperDragAndDropState createState() => _SuperDragAndDropState();
}

class _SuperDragAndDropState extends State<SuperDragAndDrop> {
  List<Color> colors = [Colors.red, Colors.green, Colors.blue, Colors.yellow];
  List<Color> droppedColors = [];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DragTarget<Color>(
                onAccept: (color) {
                  setState(() {
                    droppedColors.add(color);
                    colors.remove(color);
                  });
                },
                builder: (context, candidateData, rejectedData) {
                  return Container(
                    width: 150,
                    height: 150,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text(
                        'Drop Here!',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(width: 20),
              DragTarget<Color>(
                onAccept: (color) {
                  setState(() {
                    droppedColors.add(color);
                    colors.remove(color);
                  });
                },
                builder: (context, candidateData, rejectedData) {
                  return Container(
                    width: 150,
                    height: 150,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text(
                        'Drop Here!',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 40),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: colors.map((color) {
              return Draggable<Color>(
                data: color,
                feedback: Material(
                  color: Colors.transparent,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: color.withOpacity(0.5),
                    child: Center(
                      child: Text(
                        'Drag me!',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ),
                childWhenDragging: Container(
                  width: 100,
                  height: 100,
                  color: Colors.grey.withOpacity(0.3),
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  color: color,
                  child: Center(
                    child: Text(
                      'Drag me!',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 40),

          // Ko'chirilgan elementlar ro'yxati
          Text('Dropped Colors:', style: TextStyle(fontSize: 20)),
          SizedBox(height: 20),
          Wrap(
            children: droppedColors.map((color) {
              return Container(
                width: 50,
                height: 50,
                color: color,
                margin: EdgeInsets.all(5),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
