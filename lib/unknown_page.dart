import 'package:flutter/material.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            '页面飞走了',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
