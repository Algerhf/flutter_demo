import 'package:flutter/material.dart';

class FittedBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox Example'),
      ),
      body: Center(
        child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.grey[300],
            child: FittedBox(
              fit: BoxFit.contain,
              alignment: Alignment.center,
              clipBehavior: Clip.hardEdge,
              child: Container(
                alignment: Alignment.center,
                color: Colors.blue,
                child: Text(
                  'Flutter',
                  style: TextStyle(fontSize: 30.0, color: Colors.white),
                ),
              ),
            )),
      ),
    );
  }
}
