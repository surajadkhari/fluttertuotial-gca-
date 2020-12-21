import 'package:flutter/material.dart';
import 'package:flutterGCA/screen/setting_homepage.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home page")),
      body: GestureDetector(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(child: Text("GO to setting page")),
          ],
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeSetting(),
              ));
          print("on pressed");
        },
      ),
    );
  }
}
