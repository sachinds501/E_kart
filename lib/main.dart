import 'package:e_kart/createAccount.dart';
import 'package:e_kart/forgotpassword.dart';
import 'package:e_kart/splashscreen.dart';
import 'package:e_kart/utils/routes.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';
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
      initialRoute: MyRoutes.splashscreenRoutes,
      routes: {
        MyRoutes.loginRoutes: (context) => const LoginPage(),
        MyRoutes.splashscreenRoutes: (context) => const SplashScreen(),
        MyRoutes.homepageRoutes: (context) => const HomePage(),
        MyRoutes.forgotpasswordpageRoutes: (context) =>
            const ForgotPasswordPage(),
        MyRoutes.createNewAccountRoutes: (context) => const CreateNewAccount(),
      },
    );
  }
}
