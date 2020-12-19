import 'package:flutter/material.dart';

class Settingitem extends StatelessWidget {
  final double settingWidth, settingheight;
  Settingitem({@required this.settingWidth, @required this.settingheight});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: settingWidth,
      height: settingheight,
      decoration: BoxDecoration(color: Colors.white),
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [_icons(), SizedBox(width: 20), _settingDescription()],
          ),
        ),
      ),
    );
  }

  Widget _icons() {
    return Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.wifi,
          color: Colors.white,
        ));
  }

  Widget _settingDescription() {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Netwrok & Internet",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          "Wifi,mobile,data usage",
          style: TextStyle(color: Colors.grey.shade400),
        )
      ],
    );
  }
}
