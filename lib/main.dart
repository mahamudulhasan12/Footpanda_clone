import 'package:flutter/material.dart';
import 'package:foodpanda/identity/location/location_screen.dart';
import 'package:foodpanda/identity/login/login_screen.dart';
import 'package:foodpanda/view/NavigationBottonBar/navigation_botton_bar.dart';
import 'package:foodpanda/view/home/home_screen.dart';
import 'package:foodpanda/view/spalish_screen/spalish_screen.dart';



void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: SpalishScreen(),
    );
  }
}