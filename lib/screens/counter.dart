import 'dart:developer';

import 'package:flutter/material.dart';

class Mycounter extends StatefulWidget {
  @override
  _MycounterState createState() => _MycounterState();
}

class _MycounterState extends State<Mycounter> {
  int _countValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarBuilder(),
        floatingActionButton: actionButtons(),
        body: Center(
          child: Ink(
            color: Colors.transparent,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Demo counter app with + and -',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('$_countValue')
              ],
            ),
          ),
        ));
  }

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

  _decrement() {
    setState(() {
      _countValue--;
    });
  }

  _increment() {
    setState(() {
      _countValue++;
    });
  }

  Widget appBarBuilder() {
    return AppBar(
      title: Text('Counter'),
      centerTitle: true,
    );
  }

  Widget _buttonBuilder(Function onPressed, Widget child) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: child,
      backgroundColor: Colors.black,
    );
  }
}
