import 'package:flutter/material.dart';

//The main function is the starting point for all of our Flutter apps
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: Icon(Icons.traffic),
          elevation: 2.0,
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 60.0,
            color: Colors.blueAccent[100],
          ),
          shape: CircularNotchedRectangle(),
          color: Colors.blueGrey,
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/Monty_1.png'),
          ),
        ),
      ),
    ),
  );
}
