import 'package:flutter/material.dart';
import 'food_card.dart';

//Data
import '../data/category_data.dart';

//Model
import '../models/category_model.dart';

class FoodCategory extends StatelessWidget {

  final List<Category> _caregories = categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _caregories.length,
        itemBuilder: (BuildContext context, int index) {
          return FoodCard(
            categoryName: _caregories[index].categoryName,
            imagePath: _caregories[index].imagePath,
            numberOfItems: _caregories[index].numberOfItems,
          );
        },
      ),
    );
  }
}
