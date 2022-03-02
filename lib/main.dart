import 'package:e_kart/utils/routes.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      // theme: lightThemeData(context),
      // darkTheme: darkThemeData(context),
      initialRoute: MyRoutes.loginRoutes,
      routes: {
        MyRoutes.loginRoutes: (context) => const LoginPage(),
      },
    );
  }
}
