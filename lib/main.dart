import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('AI Blog'),
        ),
        body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Container(
              color: randomColor(),
              width: 400,
              height: 500,
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('hello!');
          },
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:'home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label:'Business'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label:'School'
          )
          ],
        ),
        drawer: const Drawer(
          child: Text('Yo!')
        ),
      )
    );
  }

  randomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }
}