import 'package:flutter/material.dart';

class SpacerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spacer Example'),
      ),
      body: Column(children: [
        Container(
            width: double.infinity,
            height: 50.0,
            alignment: Alignment.center,
            color: Colors.blue,
            child: Text(
              'Top',
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            )),
        Spacer(flex: 2,),
        Container(
            width: double.infinity,
            height: 50.0,
            alignment: Alignment.center,
            color: Colors.green,
            child: Text(
              'Middle',
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            )),
        Spacer(),
        Container(
            width: double.infinity,
            height: 50.0,
            alignment: Alignment.center,
            color: Colors.red,
            child: Text(
              'Bottom',
              style: TextStyle(fontSize: 30.0, color: Colors.white),
            ))
      ]),
    );
  }
}
