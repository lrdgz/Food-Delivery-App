import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold);

    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("What would", style: textStyle,),
              Text("You like to a eat?", style: textStyle),
            ],
          ),
          Icon(Icons.notifications_none, size: 30.0,color: Theme.of(context).primaryColor,)
        ],
      ),
    );
  }
}
