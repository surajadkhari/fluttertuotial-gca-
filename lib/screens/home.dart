import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            Icon(Icons.access_alarm),
            SizedBox(width: 20),
            Icon(Icons.ac_unit_rounded),
            SizedBox(width: 20)
          ],
          title: Text('Hello'),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: ListView(
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.purple,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.green,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.orange,
            ),
            Text(
              'SUrath',
              style: TextStyle(color: Colors.red),
            ),
            TextField(),
            RaisedButton(
              onPressed: () {},
              child: Text('Raise Button'),
              color: Colors.red,
              elevation: 10,
            ),
            FlatButton(
                onPressed: () {},
                child: Text('Flatbutton'),
                color: Colors.indigoAccent),
            Image.network(
              "https://course.genesecloud.academy/pluginfile.php?file=%2F1%2Ftheme_alpha%2Fcustomlogotopbar%2F1606229507%2Fsmall-icon.png",
              height: 100,
              width: 50,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.black26,
              child: Stack(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    color: Colors.amber,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.orange,
                  ),
                  Text('Hello')
                ],
              ),
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.purple,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.green,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.orange,
            ),
            Text('Hello')
          ],
        ));
  }
}
