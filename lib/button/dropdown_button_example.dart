import 'package:flutter/material.dart';

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  DropdownButtonState createState() => DropdownButtonState();
}

class DropdownButtonState extends State<DropdownButtonExample> {
  Color _color = Colors.red;
  final _colors = [Colors.red, Colors.yellow, Colors.blue, Colors.green];
  final _info = ["红色", "黄色", "蓝色", "绿色"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IconButton Example'),
      ),
      body: Center(
          child: DropdownButton<Color>(
        items: _buildItems(), // 下拉选项列表
        // selectedItemBuilder: (context){
        //   return [];
        // },
        value: _color,
        hint: Text('请选择颜色'),
        disabledHint: Text('我被禁用啦'),
        onChanged: (v) => setState(() => _color = v!),
        // onChanged: null,
        onTap: () {
          print('onTap called');
        },
        elevation: 8,
        style: TextStyle(color: Colors.black, fontSize: 24.0),
        underline: Icon(Icons.format_underline),
        icon: Icon(Icons.expand_more, size: 40, color: _color,),
            iconDisabledColor: Colors.purple,
            iconEnabledColor: Colors.black,
            iconSize: 40.0,
            isDense: false,
            isExpanded: false,
            itemHeight: 60.0,
            focusColor: Colors.yellow,
            focusNode: FocusNode(),
            autofocus: true,
            dropdownColor: Colors.white,
            menuMaxHeight: 300.0,
            enableFeedback: true,
            alignment: Alignment.center,
            borderRadius: BorderRadius.circular(10.0),
            padding: EdgeInsets.all(10.0),
      )),
    );
  }

  List<DropdownMenuItem<Color>> _buildItems() {
    return _colors
        .map((e) => DropdownMenuItem<Color>(
            value: e,
            child: Text(
              _info[_colors.indexOf(e)],
              style: TextStyle(color: e),
            )))
        .toList();
  }
}
