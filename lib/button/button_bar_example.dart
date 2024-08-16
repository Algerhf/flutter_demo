import 'package:flutter/material.dart';

class ButtonBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Bar'),
      ),
      body: Center(
        child: ButtonBar(
          alignment:MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          buttonTextTheme: ButtonTextTheme.normal,
          buttonMinWidth: 80,
          buttonHeight: 48.0,
          buttonPadding: EdgeInsets.all(10.0),
          buttonAlignedDropdown: false,
          layoutBehavior: ButtonBarLayoutBehavior.constrained,
          overflowDirection: VerticalDirection.down,
          overflowButtonSpacing: 10.0,
          children: [
            MaterialButton(
              onPressed: (){},
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('A'),
            ),
            MaterialButton(
              onPressed: (){},
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('B'),
            ),
            MaterialButton(
              onPressed: (){},
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('C'),
            )
          ],
        ),
      ),
    );
  }
}
