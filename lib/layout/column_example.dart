import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Row Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline:TextBaseline.alphabetic,
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.blue,
            width: 50.0,
            height: 50,
            child: Text('ABC', style: TextStyle(color: Colors.white)),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.green,
            width: 50.0,
            height: 75,
            child: Text('BCD', style: TextStyle(color: Colors.white)),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.red,
            width: 50.0,
            height: 100,
            child: Text(
              'CDE',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
