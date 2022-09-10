import 'package:flutter/material.dart';
import 'package:stomache/Healthy_Taco_Salad.dart';
import 'package:stomache/Tuna_Salad.dart';
import 'package:stomache/Vegan_Breakfast.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'main.dart';

class salads extends StatefulWidget {
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];
  String name = 'Juicy Burger';
  String image = "images/image4.jpeg";
  double totalAmount = 0;
  List<String> orders = [];

  salads(
      {required this.Email,
      required this.Password,
      required this.fullName,
      required this.mobileNumber,
      required this.gender,
      required this.dateOfBirth,
      required this.cart,
      required this.totalAmount,
      required this.orders});

  @override
  State<salads> createState() => _saladsState(
      Email: Email,
      Password: Password,
      fullName: fullName,
      mobileNumber: mobileNumber,
      gender: gender,
      dateOfBirth: dateOfBirth,
      cart: cart,
      totalAmount: totalAmount,
      orders: orders);
}

class _saladsState extends State<salads> {
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];
  String name = 'Juicy Burger';
  String image = "images/image4.jpeg";
  double totalAmount = 0;
  List<String> orders = [];

  _saladsState(
      {required this.Email,
      required this.Password,
      required this.fullName,
      required this.mobileNumber,
      required this.gender,
      required this.dateOfBirth,
      required this.cart,
      required this.totalAmount,
      required this.orders});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print(orders.length);
    return Row(
      children: <Widget>[
        SizedBox(
          width: 10,
        ),
        Container(
          width: 180,
          height: 190,
          padding: EdgeInsets.only(top: 20),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            elevation: 10,
            color: Colors.white,
            child: Container(
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 20, top: 108, right: 18),
                trailing: Icon(Icons.add_shopping_cart),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TunaSalad(
                              Email: Email,
                              Password: Password,
                              fullName: fullName,
                              mobileNumber: mobileNumber,
                              gender: gender,
                              dateOfBirth: dateOfBirth,
                              cart: cart,
                              totalAmount: totalAmount,
                              orders: orders)));
                },
                iconColor: Colors.deepOrange,
                title: Text("Tuna Salad", style: TextStyle(fontSize: 14)),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                image: DecorationImage(
                  image: AssetImage("images/image3.jpeg"),
                  scale: 1,
                  alignment: AlignmentDirectional.topCenter,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Container(
          width: 180,
          height: 190,
          padding: EdgeInsets.only(top: 20),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            elevation: 10,
            color: Colors.white,
            child: Container(
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 20, top: 108, right: 18),
                trailing: Icon(Icons.add_shopping_cart),
                iconColor: Colors.deepOrange,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HealthyTacoSalad(
                              Email: Email,
                              Password: Password,
                              fullName: fullName,
                              mobileNumber: mobileNumber,
                              gender: gender,
                              dateOfBirth: dateOfBirth,
                              cart: cart,
                              totalAmount: totalAmount,
                              orders: orders)));
                },
                title:
                    Text("Healthy Taco Salad", style: TextStyle(fontSize: 14)),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                image: DecorationImage(
                  image: AssetImage("images/image2.jpeg"),
                  scale: 1,
                  alignment: AlignmentDirectional.topCenter,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
