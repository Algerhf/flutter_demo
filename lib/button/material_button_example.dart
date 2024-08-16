import 'package:flutter/material.dart';

class MaterialButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Button'),
      ),
      body: Center(
        child: MaterialButton(
          key: ValueKey('Material Button'),
          onPressed: () {
            print('onPressed');
          },
          onLongPress: () {
            print('onLongPress');
          },
          onHighlightChanged: (bool){

          },
          // mouseCursor: ,
          textColor: Colors.white,
          disabledTextColor: Colors.white70,
          color: Colors.blue,
          disabledColor: Colors.blueGrey,
          focusColor: Colors.blueGrey,
          hoverColor: Colors.black,
          highlightColor: Colors.yellowAccent,
          splashColor: Colors.orange,
          colorBrightness: Brightness.light,
          elevation: 5.0,
          focusElevation: 5.0,
          hoverElevation: 5.0,
          highlightElevation: 5.0,
          disabledElevation: 5.0,
          padding: EdgeInsets.all(10.0),
          visualDensity: VisualDensity.standard,
          shape: RoundedRectangleBorder(),
          clipBehavior: Clip.hardEdge,
          focusNode: FocusNode(),
          autofocus: true,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          animationDuration: Duration(seconds: 2),
          minWidth: 200.0,
          height: 48.0,
          enableFeedback: true,
          child: Text('Hello Flutter'),
        ),
      ),
    );
  }
}
