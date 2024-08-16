import 'package:flutter/material.dart';

class RawMaterialButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elevated Button'),
      ),
      body: Center(
        child: RawMaterialButton(
          key: ValueKey('ElevatedButton'),
          onPressed: () {
            print('onPressed');
          },
          onLongPress: () {
            print('onLongPress');
          },
          onHighlightChanged: (bool){

          },
          // mouseCursor: ,
          textStyle: TextStyle(color: Colors.black,fontSize: 30.0),
          fillColor: Colors.blue,
          focusColor: Colors.blueGrey,
          hoverColor: Colors.black,
          highlightColor: Colors.yellowAccent,
          splashColor: Colors.orange,
          elevation: 5.0,
          focusElevation: 5.0,
          hoverElevation: 5.0,
          highlightElevation: 5.0,
          disabledElevation: 5.0,
          padding: EdgeInsets.all(10.0),
          visualDensity: VisualDensity.standard,
          constraints: BoxConstraints(minWidth: 200,minHeight: 48),
          shape: RoundedRectangleBorder(),
          animationDuration: Duration(seconds: 2),
          clipBehavior: Clip.hardEdge,
          focusNode: FocusNode(),
          autofocus: true,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          enableFeedback: true,
          child: Text('Hello Flutter'),
        ),
      ),
    );
  }
}
