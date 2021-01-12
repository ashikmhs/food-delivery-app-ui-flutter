import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/*import 'package:font_awesome_flutter/font_awesome_flutter.dart';*/
import 'package:food_delivery/components/categories_section.dart';
import 'package:food_delivery/components/popular_section.dart';
import 'package:food_delivery/components/specialOffers_section.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      child: Text(
                        'View all',
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xFF00B970)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 70.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Categories(
                      image: 'assets/images/pizza.jpg',
                      title: 'Pizza',
                    ),
                    Categories(
                      image: 'assets/images/pasta.jpg',
                      title: 'Pasta',
                    ),
                    Categories(
                      image: 'assets/images/burger.jpg',
                      title: 'Burger',
                    ),
                    Categories(
                      image: 'assets/images/pizza.jpg',
                      title: 'Pizza',
                    ),
                    Categories(
                      image: 'assets/images/pasta.jpg',
                      title: 'Pasta',
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Special Offers',
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                height: 240.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SpecialOffers(
                        image: 'assets/images/pizzaIcon.png',
                        title: 'Pizza Carbonara \n35cm',
                        price: 'Tk 10.99'),
                    SpecialOffers(
                        image: 'assets/images/burgerIcon.png',
                        title: 'Burger special \nDouble meat',
                        price: 'Tk 9.99'),
                    SpecialOffers(
                        image: 'assets/images/pastaIcon.png',
                        title: 'Pasta Special \nFull plait',
                        price: 'Tk 12.99'),
                    SpecialOffers(
                        image: 'assets/images/pizzaIcon.png',
                        title: 'Pizza Carbonara \n35cm',
                        price: 'Tk 10.99'),
                    SpecialOffers(
                        image: 'assets/images/pastaIcon.png',
                        title: 'Pasta Special \nFull plait',
                        price: 'Tk 12.99'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 13.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Popular',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      child: Text(
                        'View all',
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xFF00B970)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
//                height: 177,
                padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0.0),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: <Widget>[
                    Popular(
                      image: 'assets/images/pizza.jpg',
                      title: 'Subway sandwich',
                      price: 'Tk 9.99',
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Popular(
                      image: 'assets/images/pasta.jpg',
                      title: 'Subway sandwich',
                      price: 'Tk 9.99',
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Popular(
                      image: 'assets/images/burger.jpg',
                      title: 'Subway sandwich',
                      price: 'Tk 9.99',
                    ),
                    Popular(
                      image: 'assets/images/pizza.jpg',
                      title: 'Subway sandwich',
                      price: 'Tk 9.99',
                    ),
                    SizedBox(
                      height: 7,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
