import 'package:flutter/material.dart';

class IconButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IconButton Example'),
      ),
      body: Center(
        child: IconButton(
          key: ValueKey('IconButton'),
          iconSize: 40.0,
          visualDensity: VisualDensity.standard,
          padding: EdgeInsets.all(10.0),
          alignment: Alignment.center,
          splashRadius: 15.0,
          color: Colors.blueAccent,
          focusColor: Colors.orange,
          hoverColor: Colors.orange,
          highlightColor: Colors.orange,
          splashColor: Colors.yellowAccent,
          disabledColor: Colors.grey,
          onPressed: () {},
          // mouseCursor: ,
          focusNode: FocusNode(),
          autofocus: true,
          tooltip: 'IconButton',
          enableFeedback: true,
          constraints: BoxConstraints(minHeight: 48.0),
          // style: ButtonStyle(
          //     elevation: WidgetStateProperty.all(5.0),
          //     shadowColor: WidgetStateProperty.all<Color>(Colors.grey)),
          isSelected: true,
          selectedIcon: Icon(Icons.settings_applications_outlined),
          icon: Icon(Icons.settings_applications_rounded),
        ),
      ),
    );
  }
}
