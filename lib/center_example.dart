import 'package:flutter/material.dart';

class CenterExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Center Example'),
        ),
        body: Container(
          color: Colors.red,
          child: Center(
              widthFactor: 2.0,
              heightFactor: 2.0,
              child: Container(
                  alignment: Alignment.center,
                  color: Colors.green,
                  width: 50,
                  height: 50,
                  child: Text(
                    'Scaled Center',
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                    textAlign: TextAlign.center,
                  ))),
        ));
  }
}
