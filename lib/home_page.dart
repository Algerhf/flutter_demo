import 'package:flutter/material.dart';
import 'package:flutter_demo/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home Pager')),
        body: Center(
          child: MaterialButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/second');
            },
            child: const Text(
              '下一页',
              style: TextStyle(color: Colors.redAccent),
            ),
          ),
        ),
    );
  }
}
