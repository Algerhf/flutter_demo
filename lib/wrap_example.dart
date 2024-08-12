import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Example'),
      ),
      body: Container(
        color: Colors.yellow,
        width: double.infinity,
        height: 200.0,
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.spaceEvenly,
          spacing: 10.0,
          runAlignment: WrapAlignment.start,
          runSpacing: 10.0,
          crossAxisAlignment: WrapCrossAlignment.start,
          textDirection: TextDirection.ltr,
          verticalDirection: VerticalDirection.down,
          clipBehavior: Clip.hardEdge,
          children: [
            Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('A'),
                ),
                label: Text('Chip A')),
            Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('B'),
                ),
                label: Text('Chip B')),
            Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('C'),
                ),
                label: Text('Chip C')),
            Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('D'),
                ),
                label: Text('Chip D')),
            Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text('E'),
                ),
                label: Text('Chip E')),
          ],
        ),
      ),
    );
  }
}
