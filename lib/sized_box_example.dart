
import 'package:flutter/material.dart';

class SizedBoxExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('SizedBox Example'),
        ),
        body: SizedBox(
          width: 200,
          height: 50,
          child: ElevatedButton(
            onPressed: (){},
            child: Text('Button with SizedBox'),
          ),
        )

    );
  }

}