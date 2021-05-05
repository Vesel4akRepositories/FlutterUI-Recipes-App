import 'package:flutter/cupertino.dart';
import 'package:food_app/constants.dart';

class MainDish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            width: 330,
            height: 150,
            decoration: BoxDecoration(
                color: silverColor, borderRadius: BorderRadius.circular(150)),
          ),
        ),
        Row(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Image.network(
                "https://www.pngkey.com/png/full/795-7951145_garden-salad.png",
                width: 160,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chicken Salad",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Chicken with Avocado",
                  style: TextStyle(fontSize: 11),
                ),
                Text(
                  "\$32.00",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            ),

          ],
        ),
      ],
    );
  }
}
