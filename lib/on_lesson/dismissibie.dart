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

  final itmes = List<String>.generate(20, (i)=> "Item ${i+1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: itmes.length,
          itemBuilder: (context, index){
          final item = itmes[index];
          return Dismissible(
              key: Key(item),
              onDismissed: (direction){
                setState(() {
                  itmes.removeAt(index);
                });
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$item dismissed')));
              },
              background: Container(
                color: Colors.red,
              ),
              child: ListTile(
                title: Text(item) ,
              ));
          }),
    );
  }
}
