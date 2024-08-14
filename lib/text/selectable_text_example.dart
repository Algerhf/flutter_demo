import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SelectableTextExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RichText Example'),
      ),
      body: Center(
        child: SelectableText(
          '这是一段可以被选择的文本这是一段可以被选择的文本这是一段可以被选择的文本这是一段可以被选择的文本',
          //key:'',
          // focusNode: FocusNode(),
          style: TextStyle(
              fontSize: 20.0, color: Colors.blue, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          //textScaleFactor: 1.0,
          textScaler: TextScaler.noScaling,
          showCursor: true,
          autofocus: true,
          // toolbarOptions: , // 过时
          minLines: 3,
          maxLines: 3,
          cursorWidth: 4.0,
          cursorHeight: 30.0,
          cursorRadius: Radius.circular(2.0),
          cursorColor: Colors.red,
          selectionHeightStyle: BoxHeightStyle.strut,
          selectionWidthStyle: BoxWidthStyle.max,
          dragStartBehavior: DragStartBehavior.start,
          enableInteractiveSelection: true,   // 选择相互
          selectionControls: null,
          onTap: () {},
          scrollPhysics: BouncingScrollPhysics(),
          semanticsLabel: '',
          textHeightBehavior: TextHeightBehavior(
            applyHeightToFirstAscent: false,
            applyHeightToLastDescent: true,
          ),
          textWidthBasis: TextWidthBasis.parent,
          onSelectionChanged: (selection,cause){
            print('New selection: ${selection.baseOffset} to ${selection.extentOffset}');
          },
          contextMenuBuilder: (context,editableTextState){
            return AdaptiveTextSelectionToolbar.editableText(editableTextState: editableTextState);
          },
          // magnifierConfiguration: TextMagnifierConfiguration(), // 放大镜配置
        ),
      ),
    );
  }
}
