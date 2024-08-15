import 'dart:ui';

import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Example'),
      ),
      body: Center(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        width: double.infinity,
        height: 200.0,
        color: Colors.red[50],
        child: Text(
          'This is Flutter Flutter\nThis is Flutter Flutter\nThis is Flutter Flutter',
          style: TextStyle(
            inherit: true,
            color: Colors.black,
            fontSize: 30.0,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            wordSpacing: 5.0,
            textBaseline: TextBaseline.alphabetic,
            leadingDistribution: TextLeadingDistribution.even,
            decoration: TextDecoration.combine([TextDecoration.underline]),
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.wavy,
            decorationThickness: 3.0,
            shadows: [Shadow(color: Colors.grey,offset: Offset(5,5),blurRadius: 4.0)]
          ),

          // strutStyle: StrutStyle(),
          //textAlign: TextAlign.justify,
          textDirection: TextDirection.ltr,
          locale: Locale('en', 'US'),
          //softWrap: false,
          overflow: TextOverflow.visible,
          textScaler: TextScaler.linear(1.0),
          // maxLines: 2,
          semanticsLabel: 'This is Flutter Text',
          textWidthBasis: TextWidthBasis.parent,
          textHeightBehavior: TextHeightBehavior(
              applyHeightToFirstAscent: false, applyHeightToLastDescent: true),
          selectionColor: Colors.red,
        ),
      )),
    );
  }
}
