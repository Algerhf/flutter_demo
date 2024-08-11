
import 'package:flutter/material.dart';

class PaddingExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Padding Example'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Container(
            color: Colors.blue,
            child: Text('Padding',style: TextStyle(color: Colors.white,fontSize: 24.0),),
          ),
        )

    );
  }

}