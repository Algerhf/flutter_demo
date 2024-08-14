import 'package:flutter/material.dart';

class RichTextExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RichText Example'),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
              text: 'Hello,',
              style: TextStyle(fontSize: 24.0, color: Colors.black),
              children: [
                TextSpan(
                    text: 'Flutter',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue)),
                TextSpan(text: '! Welcome to the world of'),
                TextSpan(
                    text: 'Flutter',
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.red)),
              ]),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
