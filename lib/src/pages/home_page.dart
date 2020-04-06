import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/scoped_models/food_model.dart';
import 'package:food_delivery_app/src/scoped_models/main_model.dart';
import 'package:food_delivery_app/src/widgets/bought_foods.dart';
import 'package:food_delivery_app/src/widgets/food_category.dart';
import 'package:food_delivery_app/src/widgets/home_top_info.dart';
import 'package:food_delivery_app/src/widgets/search_field.dart';
import 'package:scoped_model/scoped_model.dart';

// Model
import '../models/food_model.dart';

// Data
import '../data/food_data.dart';

class HomePage extends StatefulWidget {

//  final FoodModel foodModel;
//
//  const HomePage(this.foodModel);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

//  List<Food> _foods = foods;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //Call the fetch methods on foodModel
//    widget.foodModel.fetchFoods();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(height: 20.0,),
          SearchField(),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Frecuently Bought Foods", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
              GestureDetector(
                onTap: (){},
                child:  Text("View All", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.orangeAccent),),
              )
            ],
          ),
          SizedBox(height: 20.0,),
//          Column(
//            children: _foods.map(_buildFoodItems).toList(),
//            children: widget.foodModel.foods.map(_buildFoodItems).toList(),
//          ),
        ScopedModelDescendant<MainModel>(
          builder: (BuildContext context, Widget child, MainModel model){
            return Column(
              children: model.foods.map(_buildFoodItems).toList(),
            );
          },
        )
        ],
      ),
    );
  }


  Widget _buildFoodItems(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFood(
        id: food.id,
        name: food.name,
        imagePath: food.imagePath,
//        imagePath: "assets/images/breakfast.jpg",
        category: food.category,
        discount: food.discount,
        price: food.price,
        ratings: food.ratings,
      ),
    );
  }

}
