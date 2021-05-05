import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class CommonDish extends StatelessWidget {
  String name;
  String description;
  double price;
  String url;

  CommonDish(
      {@required this.name,
      @required this.description,
      @required this.price,
      this.url});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 30, bottom: 10),
            child: Container(
              width: 140,
              height: 215,
              decoration: BoxDecoration(
                  color: silverColor, borderRadius: BorderRadius.circular(150)),
            ),
          ),
        ),
        Positioned.fill(
          top: 0,
          child: Align(
            alignment: Alignment.topCenter,
            child: Image.network(
              url,
              width: 140,
            ),
          ),
        ),
        Positioned(
          top: 140,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Text(description, style: TextStyle(fontSize: 11)),
              SizedBox(
                height: 10,
              ),
              Text("\$$price",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
            ],
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              child: Icon(
                CupertinoIcons.add,
                color: Colors.white,
              ),
            ))
      ],
    );
  }
}
