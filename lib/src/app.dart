import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/screens/home_screen.dart';
import 'package:food_delivery_app/src/screens/main_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Foos Delivery App",
      theme: ThemeData(
        primaryColor: Colors.deepOrange
      ),
      home: MainScreen(),
    );
  }
}
