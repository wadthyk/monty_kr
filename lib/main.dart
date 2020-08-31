import 'package:flutter/material.dart';

//The main function is the starting point for all of our Flutter apps
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(title: Text('Monty App'), backgroundColor: Colors.green),
        bottomNavigationBar: BottomAppBar(
          color: Colors.green,
          child: Container(
            height: 50.0,
          ),
        ),
        body: Center(
          child: Image(
            height: 300,
            width: 300,
            image: AssetImage('images/Monty_1.png'),
          ),
        ),
      ),
    ),
  );
}
