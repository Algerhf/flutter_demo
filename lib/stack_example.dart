import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              clipBehavior: Clip.hardEdge,
              children: [
                Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 150.0,
                  height: 150.0,
                  color: Colors.green,
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.red,
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.blue,
                ),
                Positioned(
                    left: 50.0,
                    top: 50.0,
                    child: Container(
                      width: 150.0,
                      height: 150.0,
                      color: Colors.green,
                    )),
                Positioned(
                    right: -25.0,
                    bottom: -25.0,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.red,
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
