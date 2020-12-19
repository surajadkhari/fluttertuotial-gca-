import 'package:flutter/material.dart';
import 'package:flutterGCA/screen/setting_items.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: _appBar(),
      body: _body(),
    );
  }

  Widget _appBar() {
    return AppBar(
      backgroundColor: Colors.grey.shade200,
      elevation: 2,
      title: _mySearchBar(),
    );
  }

//Search bar method
  Widget _mySearchBar() {
    OutlineInputBorder border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(color: Colors.grey));
    return SizedBox(
      height: height * 0.06,
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: Colors.black),
          hintText: "Seach Setting",
          enabled: true,
          filled: true,
          fillColor: Colors.white,
          focusedBorder: border,
          enabledBorder: border, //bordere colord
        ),
      ),
    );
  }

  Widget _body() {
    return ListView(
      children: [
        Settingitem(
          settingWidth: width,
          settingheight: height * .1,
        )
      ],
    );
  }
}
