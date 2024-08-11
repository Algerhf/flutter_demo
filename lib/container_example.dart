
import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Container Example'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20.0),
          width: 300.0,
          height: 300.0,
          constraints: BoxConstraints(
              maxWidth: 350.0,
              maxHeight: 350.0
          ),
          margin: EdgeInsets.all(10.0),
          transform: Matrix4.rotationZ(0.1),
          transformAlignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(40.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(4,4),
                    blurRadius: 10.0
                )
              ]
          ),
          foregroundDecoration: BoxDecoration(
              border: Border.all(color: Colors.white,width: 3.0)
          ),
          clipBehavior: Clip.hardEdge,
          child: Text(
            'Hello,Flutter',
            style: TextStyle(color: Colors.white,fontSize: 24.0),
          ),
        )
    );
  }

}