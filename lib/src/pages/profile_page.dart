import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/widgets/custom_list_tile.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  bool turnOnNotification = false;
  bool turnOnLocation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
//        color: Colors.redAccent,
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Profile", style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),),
              SizedBox(height: 20.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
//                  color: Colors.red,
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.0),
                      boxShadow: [BoxShadow(blurRadius: 3.0, offset: Offset(0, 4.0), color: Colors.black38)],
                      image: DecorationImage(
                        image: AssetImage("assets/images/breakfast.jpg"),
                        fit: BoxFit.cover
                      ),
                    ),
//                  child: Image.asset("assets/images/breakfast.jpg", fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 20.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Luis Rodriguez", style: TextStyle(fontSize: 16.0),),
                      SizedBox(height: 10.0,),
                      Text("0000000000000", style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 20.0,),
                      Container(
                        height: 30.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(child: Text("Edit", style: TextStyle(color:Theme.of(context).primaryColor, fontSize: 16.0),),),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Text("Account", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
              SizedBox(height: 20.0,),
              Card(
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      CustomListTile(icon: Icons.location_on, text: "Location",),
                      Divider(height: 10.0, color: Colors.grey, ),
                      CustomListTile(icon: Icons.visibility, text: "Change Password",),
                      Divider(height: 10.0, color: Colors.grey, ),
                      CustomListTile(icon: Icons.shopping_cart, text: "Shipping",),
                      Divider(height: 10.0, color: Colors.grey,),
                      CustomListTile(icon: Icons.payment, text: "Payment",),
                      Divider(height: 10.0, color: Colors.grey,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Text("Notifications", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
              SizedBox(height: 20.0,),
              Card(
                elevation: 3.0,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child:Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("App Notification", style: TextStyle(fontSize: 16.0),),
                          Switch(value: turnOnNotification, onChanged: (bool value){ setState(() {
                            turnOnNotification = value;
                          }); },)
                        ],
                      ),
                      Divider(height: 10.0, color: Colors.grey, ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Location Tracking", style: TextStyle(fontSize: 16.0),),
                          Switch(value: turnOnLocation, onChanged: (bool value){ setState(() {
                            turnOnLocation = value;
                          }); },)
                        ],
                      ),
                      Divider(height: 10.0, color: Colors.grey,),
                    ],
                  )
                ),
              ),
              SizedBox(height: 20.0,),
              Text("Other", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
              SizedBox(height: 20.0,),
              Card(
                elevation: 3.0,
                child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Language", style: TextStyle(fontSize: 16.0),),
//                          SizedBox(height: 10,),
                          Divider(height: 20.0, color: Colors.grey),
                          Text("Currency", style: TextStyle(fontSize: 16.0),),
//                          SizedBox(height: 10,),
                          Divider(height: 20.0, color: Colors.grey),
                        ],
                      ),
                    )
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
