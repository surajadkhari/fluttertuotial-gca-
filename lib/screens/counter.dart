import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutterGCA/screens/widgetrefactor.dart';

class Mycounter extends StatefulWidget {
  @override
  _MycounterState createState() => _MycounterState();
}

class _MycounterState extends State<Mycounter> {
  int _countValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarBuilder(),
      floatingActionButton: actionButtons(),
      body: _bodyBuilder(),
      drawer: _drawBuilder(),
      endDrawer: _drawBuilder(),
    );
  }

  Widget _drawBuilder() {
    return Drawer(
      child: Multiplewidget(),
    );
  }

//method for action buttons
  Widget actionButtons() {
    return Ink(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buttonBuilder(() {
            _increment();
          }, Icon(Icons.add)),
          _buttonBuilder(() {
            _decrement();
          }, Icon(Icons.remove))
        ],
      ),
    );
  }

//method for action decreament
  _decrement() {
    setState(() {
      _countValue--;
    });
  }

//method for action increament
  _increment() {
    setState(() {
      _countValue++;
    });
  }

//method for action AppBarBuilder
  Widget _appBarBuilder() {
    return AppBar(
      title: Text('Counter'),
      centerTitle: true,
    );
  }

//method for action Body Builder
  Widget _bodyBuilder() {
    return Center(
      child: Ink(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Demo counter app with + and -',
                style: TextStyle(fontSize: 15)),
            SizedBox(
              height: 20,
            ),
            Text('$_countValue')
          ],
        ),
      ),
    );
  }

//method for button Builder
  Widget _buttonBuilder(Function onPressed, Widget child) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: child,
      backgroundColor: Colors.black,
    );
  }
}
