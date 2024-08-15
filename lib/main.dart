import 'package:flutter/material.dart';
import 'package:flutter_demo/home_page.dart';
import 'package:flutter_demo/login_page.dart';
import 'package:flutter_demo/second_page.dart';
import 'package:flutter_demo/text/selectable_text_example.dart';
import 'package:flutter_demo/unknown_page.dart';

void main() {
  runApp(const MyApp());
}

GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/home':(context) =>  const HomePage(),
        '/second':(context) => const SecondPage()
      },
      initialRoute: '/home',
      onGenerateRoute: (RouteSettings settings){
        print('onGenerateRoute called');
        switch(settings.name){
          case '/login':
            return MaterialPageRoute(builder: (BuildContext context){
              return const LoginPage();
            });
        }
      },

      onUnknownRoute: (RouteSettings settings){
        print('onUnknownRoute called');
        return MaterialPageRoute(builder: (BuildContext context){
          return const UnknownPage();
        });
      },
      scaffoldMessengerKey: scaffoldMessengerKey,
      onNavigationNotification: (navigationNotification){
        print('onNavigationNotification called');
        print(navigationNotification);
        // navigationNotification.dispatch(context);
        return false;
      },
      // onGenerateTitle: (BuildContext context){
      //   return "Default Title";
      // },
      // home: SelectableTextExample(),
    );
  }
}
