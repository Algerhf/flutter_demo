import 'package:flutter/material.dart';

class FractionallySizedBoxExample extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FractionallySizedBox Example'),),
      body: Container(
          color: Colors.grey[300],
          child: FractionallySizedBox(
            alignment: Alignment.center,
            widthFactor: 2,
            heightFactor: 2,
            child: Container(
              width: 100.0,
              height: 100.0,
              alignment: Alignment.center,
              color: Colors.blue,
              child: Text('50%',style: TextStyle(color: Colors.white),),
            ),
          ),
        ),
    );
  }

}