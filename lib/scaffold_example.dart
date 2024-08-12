import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scaffold Example')),
      body: Center(child: Text('Scaffold')),
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      persistentFooterButtons: [
        ElevatedButton(onPressed: () {}, child: Text('确定')),
        ElevatedButton(onPressed: () {}, child: Text('取消')),
      ],
      persistentFooterAlignment: AlignmentDirectional.centerStart,
      drawer: Drawer(backgroundColor: Colors.yellow, child: Text('This is Drawer'),),
      onDrawerChanged: (value){},
      endDrawer: Drawer(
        child: Center(child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text('右侧抽屉'),
            Text('右侧抽屉'),
            Text('右侧抽屉'),
          ],
        )),
      ),
      onEndDrawerChanged: (value){},
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.eco_outlined), label: '首页')
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
      ),
      bottomSheet: BottomSheet(
        builder: (context){
          return Text('底部Sheet');
        }, onClosing: () {  },
      ),
      backgroundColor: Colors.grey,
      resizeToAvoidBottomInset:true,
      primary: true,
      drawerDragStartBehavior: DragStartBehavior.start,
      extendBody: false,
      extendBodyBehindAppBar: false,
      drawerScrimColor: Colors.red[100],
      drawerEdgeDragWidth: 40.0,
      drawerEnableOpenDragGesture: true,
      endDrawerEnableOpenDragGesture: false,
      restorationId: 'app',
    );
  }
}
