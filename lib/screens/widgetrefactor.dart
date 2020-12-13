import 'package:flutter/material.dart';

class Multiplewidget extends StatefulWidget {
  @override
  _MultiplewidgetState createState() => _MultiplewidgetState();
}

class _MultiplewidgetState extends State<Multiplewidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBuilder(),
      body: Column(
        children: [
          for (int i = 0; i < 9; i++) _eachButtonBuilder(i.toString()),

          // _eachButtonBuilder('0'),
          // _eachButtonBuilder('1'),
          // _eachButtonBuilder('2'),
        ],
      ),
    );
  }

//Mthod for button
  Widget _eachButtonBuilder(String buttonText) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [BoxShadow()]),
      child: Text(buttonText),
      width: 20,
      height: 30,
    );
  }

//appbar method
  Widget appBarBuilder() {
    return AppBar(
      title: Text('Hi'),
      centerTitle: true,
      leading: Icon(Icons.access_alarm),
    );
  }
}
