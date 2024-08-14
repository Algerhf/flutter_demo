import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Row Example'),
      ),
      body: Container(
          color: Colors.red,
          height: 200.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textDirection: TextDirection.ltr,
            verticalDirection: VerticalDirection.down,
            textBaseline: TextBaseline.ideographic,
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.blue,
                width: 50.0,
                height: 50,
                child: Text('A', style: TextStyle(color: Colors.white)),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.blue,
                width: 50.0,
                height: 75,
                child: Text('B', style: TextStyle(color: Colors.white)),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.blue,
                width: 50.0,
                height: 100,
                child: Text(
                  'C',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )),
    );
  }
}
