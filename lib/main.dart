import 'package:flutter/material.dart';
import 'package:flutter_demo/button/material_button_example.dart';
import 'package:flutter_demo/home_page.dart';
import 'package:flutter_demo/login_page.dart';
import 'package:flutter_demo/second_page.dart';
import 'package:flutter_demo/text/selectable_text_example.dart';
import 'package:flutter_demo/unknown_page.dart';

import 'button/button_bar_example.dart';
import 'button/dropdown_button_example.dart';
import 'button/elevated_button_example.dart';
import 'button/icon_button_example.dart';
import 'button/raw_material_button_example.dart';

void main() {
  runApp(const MyApp());
}

GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey();
GlobalKey<NavigatorState> navigatorKey = GlobalKey();
final RouteObserver<Route<dynamic>> routeObserver = RouteObserver();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey, // 导航键
      scaffoldMessengerKey: scaffoldMessengerKey, // scaffoldMessenger管理
      home: DropdownButtonExample(),
      routes: {
        // 路由
         '/home': (context) => const HomePage(),
        '/second': (context) => const SecondPage()
      },
      // initialRoute: '/home', // 初始路由
      onGenerateRoute: (RouteSettings settings) {
        // 路由生成器
        print('onGenerateRoute called');
        switch (settings.name) {
          case '/login':
            return MaterialPageRoute(builder: (BuildContext context) {
              return const LoginPage();
            });
        }
      },
      // onGenerateInitialRoutes: (String initialRoute) {
      //   // 生成初始化路由
      //   print('onGenerateInitialRoutes called $initialRoute');
      //   return [
      //     MaterialPageRoute(builder: (BuildContext context) {
      //       return const HomePage();
      //     }),
      //     MaterialPageRoute(builder: (BuildContext context) {
      //       return const LoginPage();
      //     })
      //   ];
      // },
      onUnknownRoute: (RouteSettings settings) {
        // onGenerateRoute 无法生成路由时调用
        print('onUnknownRoute called');
        return MaterialPageRoute(builder: (BuildContext context) {
          return const UnknownPage();
        });
      },
      onNavigationNotification: (navigationNotification) {
        print('onNavigationNotification called');
        print(navigationNotification);
        // navigationNotification.dispatch(context);
        return false;
      },
      navigatorObservers: [routeObserver], // 导航观察者
      // builder: ,
      title: 'Flutter Demo', // 标题
      onGenerateTitle: (BuildContext context) {
        // 不为空则调用此回调函数生成标题  为空则使用title
        return 'Default';
      },
      color: Colors.yellowAccent, // 主色
      theme: ThemeData(
          // 主题
          primaryColor: Colors.red,
          brightness: Brightness.light),
      // darkTheme: ThemeData(  // 暗色主题
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.black45),
      //   useMaterial3: true,
      // ),
      // highContrastTheme: ,      // 高对比度 主题
      // highContrastDarkTheme: ,  // 高对比度 暗色主题
      themeMode: ThemeMode.system, // 主题模式 默认跟随系统
      themeAnimationDuration: Duration(milliseconds: 200), // 主题动画时长
      themeAnimationCurve: Curves.linear, // 主题动画曲线
      locale: Locale('en', 'US'), // app语言支持
      // localizationsDelegates: {  // 多语言代理
      //
      // },
      localeListResolutionCallback:
          (List<Locale>? locales, Iterable<Locale> supportedLocales) {
        return Locale('en', 'US');
      },
      localeResolutionCallback:
          (Locale? locale, Iterable<Locale> supportedLocales) {
        return Locale('en', 'US');
      }, // 监听系统语言切换事件
      supportedLocales: [Locale('en', 'US')], // 多语言支持
      debugShowMaterialGrid: false, // 显示网格
      showPerformanceOverlay: false, // 是否打开性能监控
      checkerboardRasterCacheImages: false, // 检查缓存的图像
      checkerboardOffscreenLayers: false, // 检查多视图叠加渲染
      showSemanticsDebugger: false, // 打开一个覆盖图，显示框架报告的可访问性  显示边框
      debugShowCheckedModeBanner: false, // 右上角的 debug图标
      // shortcuts: ,
      // actions: ,
      // restorationScopeId: ,
      // scrollBehavior: ,
      useInheritedMediaQuery: false,
      themeAnimationStyle: AnimationStyle.noAnimation,
    );
  }
}
