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
      backgroundColor: Colors.white,
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
          hintText: "Search Setting",
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
          title: "Network & Internet",
          subtitle: "Wifi,mobile,datausage,hostpot",
          iconData: Icons.wifi,
          iconBackgroundColor: Colors.blue,
        ),
        Settingitem(
          settingWidth: width,
          settingheight: height * .1,
          title: "Connected Device",
          subtitle: "Bluetooth,Cast,NFC",
          iconData: Icons.devices,
          iconBackgroundColor: Colors.green[700],
        ),
        Settingitem(
          settingWidth: width,
          settingheight: height * .1,
          title: "App & Notification",
          subtitle: "Permission,default app",
          iconData: Icons.grain,
          iconBackgroundColor: Colors.orange,
        ),
        Settingitem(
          settingWidth: width,
          settingheight: height * .1,
          title: "Battery",
          subtitle: "83%-30m unit fully charge ",
          iconData: Icons.battery_full,
          iconBackgroundColor: Colors.teal[900],
        ),
        Settingitem(
          settingWidth: width,
          settingheight: height * .1,
          title: "Display",
          subtitle: "Wallpaper,sleep,fontsize",
          iconData: Icons.wb_sunny,
          iconBackgroundColor: Colors.amber,
        ),
        Settingitem(
          settingWidth: width,
          settingheight: height * .1,
          title: "Sound",
          subtitle: "Volume,vibration,Do not disturb",
          iconData: Icons.mic,
          iconBackgroundColor: Colors.teal[400],
        ),
        Settingitem(
          settingWidth: width,
          settingheight: height * .1,
          title: "Storage",
          subtitle: "26% used-22.3GB free",
          iconData: Icons.storage,
          iconBackgroundColor: Colors.purple[200],
        ),
        Settingitem(
          settingWidth: width,
          settingheight: height * .1,
          title: "Security",
          subtitle: "Play Protect,screen lock,finger print",
          iconData: Icons.lock,
          iconBackgroundColor: Colors.greenAccent[700],
        ),
        Settingitem(
          settingWidth: width,
          settingheight: height * .1,
          title: "Network & Internet",
          subtitle: "Wifi,mobile,datausage,hostpot",
          iconData: Icons.wifi,
          iconBackgroundColor: Colors.blue,
        ),
        Settingitem(
          settingWidth: width,
          settingheight: height * .1,
          title: "Network & Internet",
          subtitle: "Wifi,mobile,datausage,hostpot",
          iconData: Icons.wifi,
          iconBackgroundColor: Colors.blue,
        ),
        Settingitem(
          settingWidth: width,
          settingheight: height * .1,
          title: "Network & Internet",
          subtitle: "Wifi,mobile,datausage,hostpot",
          iconData: Icons.wifi,
          iconBackgroundColor: Colors.blue,
        ),
        Settingitem(
          settingWidth: width,
          settingheight: height * .1,
          title: "Network & Internet",
          subtitle: "Wifi,mobile,datausage,hostpot",
          iconData: Icons.wifi,
          iconBackgroundColor: Colors.blue,
        )
      ],
    );
  }
}
