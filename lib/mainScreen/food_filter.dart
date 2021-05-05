import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

class FoodFilter extends StatefulWidget {
 static var names = ["Salads", "Soups", "Grilled"];

  Function(int s) selectCategory;
  FoodFilter({this.selectCategory});
  @override
  _FoodFilterState createState() => _FoodFilterState();
}

class _FoodFilterState extends State<FoodFilter> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
         children: List<Widget>.generate(
              FoodFilter.names.length,
              (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ChoiceChip(
                        label: Text(FoodFilter.names[index]),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                        onSelected: (selected) {
                          setState(() {
                            currentIndex = index;
                            widget.selectCategory(index);
                          });
                        },
                        labelStyle: TextStyle(
                            fontSize: 12,
                            color: currentIndex == index
                                ? Colors.white
                                : Colors.black),
                        pressElevation: 0,
                        selectedColor: Colors.black,
                        backgroundColor: silverColor,
                        selected: index == currentIndex),
                  ))),
          ),
          Icon(CupertinoIcons.slider_horizontal_3)
        ]);
  }
}
