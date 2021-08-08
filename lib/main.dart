import 'package:flutter/material.dart';
import 'package:newflapps/pages/cart_page.dart';
import 'package:newflapps/pages/home_page.dart';
import 'package:newflapps/pages/login_page.dart';
import 'package:newflapps/utils/routs.dart';
import 'package:newflapps/widgets/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darktheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
         "/": (context) => LoginPage(),
         MyRoutes.loginRoute: (context) => LoginPage(),
         MyRoutes.homeRoute: (context) => HomePage(),
         MyRoutes.cartRout: (context) => CartPage()
      },
    );
  }
}
