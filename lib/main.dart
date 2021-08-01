import 'package:flutter/material.dart';
import 'package:newflapps/pages/home_page.dart';
import 'package:newflapps/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        
       
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
     
      routes: {
       "/" :(context) => LoginPage(),
       "/Login": (context) => LoginPage(),
       "/Home" : (context) => HomePage()
      },
    );
  }
}
