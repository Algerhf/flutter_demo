import 'package:flutter/material.dart';

class ElevatedButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elevated Button'),
      ),
      body: Center(
        child: ElevatedButton(
          key: ValueKey('ElevatedButton'),
          onPressed: () {
            print('onPressed');
          },
          onLongPress: () {
            print('onLongPress');
          },
          onHover: (isHovering) {
            print('isHovering = $isHovering');
          },
          onFocusChange: (hasFocus) {
            print('hasFocus = $hasFocus');
          },
          style: ButtonStyle(
            textStyle: WidgetStateProperty.all<TextStyle>(TextStyle(
                color: Colors.purpleAccent, fontWeight: FontWeight.bold)),
            backgroundColor:
                WidgetStateProperty.all<Color>(Colors.blue), // 背景颜色
            foregroundColor:
                WidgetStateProperty.all<Color>(Colors.white), // 字体颜色
            overlayColor:
                WidgetStateProperty.all<Color>(Colors.red), // 高亮色，点击时的背景颜色
            shadowColor: WidgetStateProperty.all<Color>(Colors.grey), // 阴影颜色
            surfaceTintColor:
                WidgetStateProperty.all<Color>(Colors.orange), // 表面颜色
            elevation: WidgetStateProperty.all<double>(5.0), // 阴影值
            padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.all(20.0)), // 内边距
            minimumSize:
                WidgetStateProperty.all<Size>(Size(150.0, 60.0)), // 最小尺寸
            fixedSize: WidgetStateProperty.all<Size>(Size(150.0, 60.0)), // 固定尺寸
            maximumSize:
                WidgetStateProperty.all<Size>(Size(150.0, 60.0)), // 最大尺寸
            iconColor:
                WidgetStateProperty.all<Color>(Colors.redAccent), // icon颜色
            iconSize: WidgetStateProperty.all<double>(40.0), // icon尺寸
            side: WidgetStateProperty.all<BorderSide>(BorderSide(  // 边框
                color: Colors.deepPurple,
                width: 2.0,
                style: BorderStyle.solid,
                strokeAlign: BorderSide.strokeAlignInside)),
            shape: WidgetStateProperty.all<OutlinedBorder>(   // 圆角弧度
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
            // mouseCursor:
            visualDensity: VisualDensity.comfortable, //视觉密度
            tapTargetSize: MaterialTapTargetSize.padded, // 点击的可视区域的大小
            animationDuration: Duration(milliseconds: 500), // 动画持续时间
            enableFeedback: true, // 触摸反馈
            alignment: Alignment.center,  // 对齐方式
            // splashFactory:             // 使用自定义的工厂，点击后的波纹效果不一样
            // backgroundBuilder: (BuildContext context, Set<MaterialState> states, Widget? child){
            //
            // },

            // foregroundBuilder: (BuildContext context, Set<MaterialState> states, Widget? child){
            // },
          ),
          focusNode: FocusNode(),
          autofocus: false,
          clipBehavior: Clip.hardEdge,
          statesController: WidgetStatesController(),
          child: Text('Hello Flutter'),
        ),
      ),
    );
  }
}
