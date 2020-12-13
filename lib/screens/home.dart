import 'package:flutter/material.dart';

class MystatefulWidget extends StatefulWidget {
  @override
  _MystatefulWidgetState createState() => _MystatefulWidgetState();
}

class _MystatefulWidgetState extends State<MystatefulWidget> {
  String value = 'Hello';
  String gesture = 'no gesture provided';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          GestureDetector(
            child: Text('Provide gesture here'),
            onTap: () {
              handleGesture('OnTap');
            },
            onDoubleTap: () {
              handleGesture('OnDoubletap');
            },
            onLongPress: () {
              handleGesture('OnLongPress');
            },
          ),
          // RaisedButton(
          //   onPressed: () {
          //     value = 'Hi';
          //     print(value);
          //     setState(() {});
          //   },
          //   child: Text('click here'),
          // ),
          Row(
            children: [
              Text(
                'Gesture Status :',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(gesture)
            ],
          )
        ],
      ),
    );
  }

  void handleGesture(String gestureInput) {
    return setState(() {
      gesture = gestureInput;
    });
  }
}

//< Without refactor)
//   import 'package:flutter/material.dart';

// class MystatefulWidget extends StatefulWidget {
//   @override
//   _MystatefulWidgetState createState() => _MystatefulWidgetState();
// }

// class _MystatefulWidgetState extends State<MystatefulWidget> {
//   String value = 'Hello';
//   String gesture = 'no gesture provided';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           GestureDetector(
//             child: Text('Provide gesture here'),
//             onTap: () {
//               setState(() {
//                 gesture = "Ontap";
//               });
//             },
//             onDoubleTap: () {
//               setState(() {
//                 gesture = "OnDoubleTap";
//               });
//             },
//             onLongPress: () {
//               setState(() {
//                 gesture = "OnLongPress";
//               });
//             },
//           ),
//           // RaisedButton(
//           //   onPressed: () {
//           //     value = 'Hi';
//           //     print(value);
//           //     setState(() {});
//           //   },
//           //   child: Text('click here'),
//           // ),
//           Row(
//             children: [
//               Text(
//                 'Gesture Status :',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               Text(gesture)
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
