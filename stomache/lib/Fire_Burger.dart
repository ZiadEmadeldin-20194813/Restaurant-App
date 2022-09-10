import 'dart:math';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:flutter/material.dart';
import 'package:stomache/mainMenu.dart';


class FireBurger extends StatefulWidget {
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];
  double totalAmount = 0;
  List<String> orders = [];

  FireBurger(
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
  State<FireBurger> createState() => _FireBurgerState(
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

class _FireBurgerState extends State<FireBurger> {
  bool isFavourite = false;
  IconData x = (Icons.favorite_outline);
  Color y = Colors.black;
  int quantity = 1;
  double price = 50;
  double smallPrice = 50.00;
  double mediumPrice = 80.00;
  double largePrice = 90.00;
  String selectedSize = 'Small';
  int favourite = 0;
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  List<Widget> cart = [];
  String name = 'Fire Burger';
  String image = "images/image5.jpg";
  double totalAmount = 0;
  List<String> orders = [];

  _FireBurgerState(
      {required this.Email,
      required this.Password,
      required this.fullName,
      required this.mobileNumber,
      required this.gender,
      required this.dateOfBirth,
      required this.cart,
      required this.totalAmount,
      required this.orders});
  ordered(List<Widget> cart) {
    cart.add(Row(
      children: <Widget>[
        Container(
          width: 385,
          height: 150,
          padding: EdgeInsets.only(top: 10),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 10,
            color: Colors.white,
            child: Row(children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 200,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 10, left: 15),
                              child: Text("${name}",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10, left: 30),
                              child: Text("Quantity: ${quantity}",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black54)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10, left: 30),
                              child: Text("Amount: ${price * quantity}\$",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black54)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 43,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 130,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      child: Image(
                        image: AssetImage("$image"),
                        alignment: Alignment.centerRight,
                        width: 150,
                        height: 200,
                      ),
                    ),
                  ),
                ],
              )
            ]),
          ),
        ),
      ],
    ));
    totalAmount += (price * quantity);
    orders.add('$name X $quantity');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                width: 390,
                height: 50,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.chevron_left,
                          size: 40,
                        )),
                    SizedBox(
                      width: 125,
                    ),
                    Text(
                      'details',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (favourite % 2 == 0) {
                            x = Icons.favorite_sharp;
                            y = Colors.red;
                            favourite++;
                          } else {
                            x = (Icons.favorite_outline);
                            y = Colors.black;
                            favourite++;
                          }
                        });
                      },
                      icon: Icon(
                        x,
                        size: 30,
                        color: y,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                  child: Container(
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/image5.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                height: 200,
              )),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Fire Burger',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 255,
                  ),
                  Text('$price\$',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.star_border_sharp,
                    size: 10,
                    color: Colors.deepOrangeAccent,
                  ),
                  Icon(
                    Icons.star_border_sharp,
                    size: 10,
                    color: Colors.deepOrangeAccent,
                  ),
                  Icon(
                    Icons.star_border_sharp,
                    size: 10,
                    color: Colors.deepOrangeAccent,
                  ),
                  Icon(
                    Icons.star_border_sharp,
                    size: 10,
                    color: Colors.deepOrangeAccent,
                  ),
                  Icon(Icons.star_border_sharp, size: 10),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    '4.0',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  Text(
                    'Quantity',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Text(
                    'Size',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 47,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          quantity--;
                          if (quantity < 1) {
                            quantity = 1;
                          }
                        });
                      },
                      icon: Icon(Icons.chevron_left)),
                  Text('$quantity'),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          quantity++;
                        });
                      },
                      icon: Icon(Icons.chevron_right)),
                  SizedBox(
                    width: 70,
                  ),
                  RadioButtonGroup(
                    labels: <String>['Small', 'Medium', 'large'],
                    orientation: GroupedButtonsOrientation.HORIZONTAL,
                    labelStyle: TextStyle(fontSize: 12),
                    activeColor: Colors.deepOrangeAccent,
                    picked: selectedSize,
                    onSelected: (String selected) {
                      selectedSize = selected;

                      setState(() {
                        if (selected == 'Small') {
                          price = smallPrice;
                        } else if (selected == 'Medium') {
                          price = mediumPrice;
                        } else if (selected == 'large') {
                          price = largePrice;
                        }
                      });
                    },
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Quantity:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  SizedBox(
                    width: 290,
                  ),
                  Text(
                    'x${quantity}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Price per piece:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  SizedBox(
                    width: 235,
                  ),
                  Text(
                    '${price}\$',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Total amount:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  SizedBox(
                    width: 245,
                  ),
                  Text(
                    '${price * quantity}\$',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                height: 110,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 390,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: ElevatedButton(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 130,
                          ),
                          Text('Add to cart'),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.shopping_cart_outlined)
                        ],
                      ),
                      onPressed: () {
                        ordered(cart);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homePage(
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
                      style: ElevatedButton.styleFrom(
                          primary: Colors.deepOrangeAccent),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
