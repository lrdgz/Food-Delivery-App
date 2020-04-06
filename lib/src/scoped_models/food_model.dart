import 'dart:convert';

import 'package:food_delivery_app/src/models/food_model.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:http/http.dart' as http;

class FoodModel extends Model{
  List<Food> _foods = [];

  List<Food> get foods{
    return List.from(_foods);
  }

  void addFood(Food food){
    _foods.add(food);
  }

  void fetchFoods(){
    http.get("http://10.0.0.8/flutter_food_app/api/foods/getFoods.php").then((http.Response response){
//      print("Fetch Data ${response.body}");
      final List fetchedData = json.decode(response.body);
      final List<Food> fetchedFoodItems = [];
//      print(fetchedData);
      fetchedData.forEach((data) {
//        print(data["id"]);
        Food food = Food(
          id: data['id'],
          name: data['title'],
          category: data["category_id"],
          discount: double.parse(data["discount"]),
          price:  double.parse(data["price"]),
          imagePath: data["image_path"],
        );

        fetchedFoodItems.add(food);
      });

      _foods = fetchedFoodItems;
//      print(_foods);
    });

  }

}