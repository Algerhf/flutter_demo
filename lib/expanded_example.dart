import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Example"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.blue,
                    height: 100.0,
                    child: Text(
                      "1 Flex",
                      textAlign: TextAlign.center,
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.green,
                    height: 100.0,
                    child: Text(
                      "2 Flex",
                      textAlign: TextAlign.center,
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
              child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.red,
                    child: Text(
                      "1 Flex",
                      textAlign: TextAlign.center,
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.orange,
                    child: Text("2 Flex", textAlign: TextAlign.center),
                  ))
            ],
          ))
        ],
      ),
    );
  }
}
