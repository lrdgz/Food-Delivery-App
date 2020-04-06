import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/scoped_models/food_model.dart';
import 'package:food_delivery_app/src/scoped_models/main_model.dart';
import 'package:food_delivery_app/src/screens/home_screen.dart';
import 'package:food_delivery_app/src/screens/main_screen.dart';
import 'package:scoped_model/scoped_model.dart';

class App extends StatelessWidget {

  final MainModel mainModel= MainModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      model: mainModel,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Foos Delivery App",
        theme: ThemeData(
            primaryColor: Colors.deepOrange
        ),
        home: MainScreen(model: mainModel),
      ),
    );
  }
}