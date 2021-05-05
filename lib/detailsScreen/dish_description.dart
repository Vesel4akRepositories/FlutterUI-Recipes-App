import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/models/Dish.dart';

class DishDescription extends StatefulWidget {
  Dish dish;

  DishDescription({this.dish});

  @override
  _DishDescriptionState createState() => _DishDescriptionState();
}

class _DishDescriptionState extends State<DishDescription> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(dPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.dish.local,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.dish.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        count--;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        CupertinoIcons.minus,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "$count",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        CupertinoIcons.add,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            widget.dish.description,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text("Delivery Time", style: TextStyle(
                color: Colors.grey
              ),),
              SizedBox(
                width: 20,
              ),
              Icon(CupertinoIcons.time),
              Text(
                "${widget.dish.time} Mins",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                Text("Total Price"),
                Text(
                  "\$${widget.dish.price}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                )
              ]),
              Stack(
                children: [
                  Transform.rotate(
                    angle: 0.8,
                    child: Container(
                      width: 65,
                      height: 65,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                  Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Icon(CupertinoIcons.shopping_cart, color: Colors.white,))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
