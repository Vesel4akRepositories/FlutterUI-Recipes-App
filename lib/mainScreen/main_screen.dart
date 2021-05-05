import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/detailsScreen/details_screen.dart';
import 'package:food_app/mainScreen/Dishes/CommonDish.dart';
import 'package:food_app/mainScreen/Dishes/MainDish.dart';
import 'package:food_app/mainScreen/bottom_bar.dart';
import 'package:food_app/models/Dish.dart';

import 'food_filter.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var activeCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(dPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(CupertinoIcons.text_alignleft),
                  Icon(CupertinoIcons.search),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Delicious ${FoodFilter.names[activeCategory]}",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              Text("We made fresh and Healthy food"),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 70,
                  child: FoodFilter(
                    selectCategory: (category) {
                      setState(() {
                        activeCategory = category;
                      });
                    },
                  )),
              SizedBox(
                height: dPadding,
              ),
              MainDish(),
              SizedBox(
                height: dPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CommonDish(
                    name: dishes[0].name,
                    description: dishes[0].shortDescription,
                    price: dishes[0].price,
                    url: dishes[0].url,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(dish: dishes[1]),
                        )),
                    child: CommonDish(
                      name: dishes[1].name,
                      description: dishes[1].shortDescription,
                      price: dishes[1].price,
                      url: dishes[1].url,
                    ),
                  ),
                ],
              ),
              Spacer(),
              BottomBar()
            ],
          ),
        ),
      ),
    );
  }
}
