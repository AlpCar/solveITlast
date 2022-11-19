import 'dart:math';
import 'package:flutter/material.dart';


// Main
void main() => runApp(MyApp());


// MyApp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}


// HomePage
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


// Randomly colored Container
Container createNewContainer() {
  return Container(
    height: 100,
    width: 400,
    child: TextField(
      decoration: InputDecoration(
        labelText: 'Input',
      ),
    ),
  );
}


// _HomePageState
class _HomePageState extends State<HomePage> {
  // Init
  List<Container> containerList = [
    createNewContainer(),
    createNewContainer(),
  ];

  // Add
  void addContainer() {
    containerList.add(createNewContainer());
  }

  // Pop
  void popContainer() {
    containerList.removeLast();
  }

  // _childrenList
  List<Widget> _childrenList() {
    return containerList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _childrenList(),
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {
                setState(() {
                  addContainer();
                });
              },
              child: Icon(Icons.add),
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              backgroundColor: Colors.grey,
              onPressed: () {
                setState(() {
                  popContainer();
                });
              },
              child: Icon(Icons.remove),
            )
          ],
        )
    );
  }
}