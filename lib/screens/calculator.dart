import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CalulatorBuilder extends StatefulWidget {
  @override
  _CalulatorBuilderState createState() => _CalulatorBuilderState();
}

class _CalulatorBuilderState extends State<CalulatorBuilder> {
  var countValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarBuilder(),
      body: _bodyBuilder(),

      //{Refactor}
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.red,
      //   onPressed: () {
      //     _increament();
      //   },
      //   child: Icon(
      //     Icons.add,
      //     size: 25,
      //     color: Colors.white,
      //   ),
      // ),
      floatingActionButton: _buttonAction(),
    );
  }

  Widget _buttonAction() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _floatingButtonBuilder(() {
          _increament();
        }, Icon(Icons.add)),
        _floatingButtonBuilder(() {
          _decreament();
        }, Icon(Icons.remove))
      ],
    );
  }

  //ButtonBuilder method
  Widget _floatingButtonBuilder(Function onpressed, Widget child) {
    return FloatingActionButton(child: child, onPressed: onpressed);
  }

  //method for incremanet and decremenr
  _increament() {
    setState(() {
      countValue++;
    });
  }

  _decreament() {
    setState(() {
      countValue--;
    });
  }

//bodyBuildermethod
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
            Text('$countValue')
          ],
        ),
      ),
    );
  }

//Appbar <Method>
  Widget appBarBuilder() {
    return AppBar(
      title: Text("Simple Count App",
          style: TextStyle(fontWeight: FontWeight.w500)),
      centerTitle: true,
      actions: [Icon(Icons.add), Icon(Icons.remove)],
    );
  }
}
