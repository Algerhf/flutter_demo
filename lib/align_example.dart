import 'package:flutter/material.dart';

class AlignExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Align Example'),
      ),
      body: Container(
          color: Colors.red[50],
          child: Align(
            alignment: Alignment.bottomRight,
            widthFactor: 3.0,
            heightFactor: 3.0,
            child: Container(
              alignment: Alignment.center,
              color: Colors.red,
              width: 50,
              height: 50,
              child: Text('Bottom Right'),
            ),
          )),
    );
  }
}
