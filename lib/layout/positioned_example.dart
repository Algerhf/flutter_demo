import 'package:flutter/material.dart';

class PositionedExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Positioned Example'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.blue[50],
              width: 300.0,
              height: 300.0,
            ),
            Positioned(
                left: 20.0,
                top: 20.0,
                child: Container(
                  color: Colors.red,
                  alignment: Alignment.center,
                  width: 100.0,
                  height: 100.0,
                  child: Text('A'),
                )),
            Positioned(
                right: 20.0,
                bottom: 20.0,
                child: Container(
                  color: Colors.green,
                  alignment: Alignment.center,
                  width: 100.0,
                  height: 100.0,
                  child: Text('B'),
                )),
            Positioned(
                left: 50.0,
                bottom: 50.0,
                child: Container(
                  color: Colors.blue,
                  alignment: Alignment.center,
                  width: 100.0,
                  height: 100.0,
                  child: Text('C'),
                )),
          ],
        ),
      ),
    );
  }
}
