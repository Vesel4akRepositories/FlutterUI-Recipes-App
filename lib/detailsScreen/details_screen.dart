import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/detailsScreen/dish_description.dart';
import 'package:food_app/models/Dish.dart';

class DetailsScreen extends StatefulWidget {
  Dish dish;

  DetailsScreen({this.dish});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final PageController controller = PageController(initialPage: 0);

  int activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(dPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkResponse(
                    child: Icon(CupertinoIcons.chevron_back),
                    radius: 25,
                    onTap: () => Navigator.pop(context),
                  ),
                  InkResponse(
                      radius: 25,
                      onTap: () {},
                      child: Icon(CupertinoIcons.ellipsis_vertical)),
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: controller,
                onPageChanged: (_activePage) {
                  setState(() {
                    activePage = _activePage;
                  });
                },
                children: [
                  Image.network(
                      "https://www.pngkey.com/png/full/795-7951145_garden-salad.png"),
                  Image.network(
                      "https://www.pngkey.com/png/full/795-7951145_garden-salad.png"),
                  Image.network(
                      "https://www.pngkey.com/png/full/795-7951145_garden-salad.png"),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  3,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 10,
                          width: activePage == index ? 30 : 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: activePage == index
                                  ? Colors.black
                                  : silverColor),
                        ),
                      )),
            ),
            SizedBox(
              height: 40,
            ),
            DishDescription(dish: widget.dish)
          ],
        ),
      ),
    );
  }
}
