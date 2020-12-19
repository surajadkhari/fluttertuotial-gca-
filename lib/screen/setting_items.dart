import 'package:flutter/material.dart';

class Settingitem extends StatelessWidget {
  final IconData iconData;
  final Color iconBackgroundColor;
  final double settingWidth, settingheight;
  String title, subtitle;
  Settingitem(
      {@required this.settingWidth,
      @required this.settingheight,
      @required this.title,
      @required this.subtitle,
      @required this.iconData,
      @required this.iconBackgroundColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      width: settingWidth,
      height: settingheight,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 0.5,
            blurRadius: 0.8,
            offset: Offset(1, 1),
          )
        ],
      ),
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
          color: iconBackgroundColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          iconData,
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
          title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: TextStyle(color: Colors.grey.shade800),
        )
      ],
    );
  }
}
