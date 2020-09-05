import 'dart:math';

import 'package:flutter/material.dart';

//The main function is the starting point for all of our Flutter apps
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  HomePage createState() => HomePage();
}

class HomePage extends State<MainPage> {
  //PageController _myPage = PageController(initialPage: 0);
  int currentIndex;

  @override
  //_MyApp createState() => MyApp();
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
            backgroundColor: Colors.green,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.green,
        child: Container(
          height: 65.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.home),
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                    //change tab (Home.dart)
                    print("${currentIndex}");
                  });
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(right: 28.0),
                icon: Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    currentIndex = 1;
                    print("${currentIndex}");
                  });
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.notifications),
                onPressed: () {
                  setState(() {
                    currentIndex = 2;
                    print("${currentIndex}");
                  });
                },
              ),
              IconButton(
                  iconSize: 30.0,
                  padding: EdgeInsets.only(right: 28.0),
                  icon: Icon(Icons.list),
                  onPressed: () {
                    setState(() {
                      currentIndex = 3;
                      print("${currentIndex}");
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
