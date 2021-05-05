import 'package:flutter/cupertino.dart';

class Dish {
  String name;
  String description;
  double price;
  int time;
  String shortDescription;
  String local = "Mediterranean";
  String url;

  Dish(
      {this.name,
      this.shortDescription,
      this.description,
      this.price,
      this.time,
      this.local,
      @required this.url});
}

List<Dish> dishes = [
  Dish(
      name: "Mixed Salad",
      shortDescription: "Mix Vegetables",
      price: 24,
      description:
          "Tear the lettuce leaves into bite-sized pieces and transfer them to a large salad bowl. Add the cucumber, tomatoes, and onion. Sprinkle with the oil, vinegar, and salt and pepper, and toss to combine.",
      time: 10,
      url: "https://www.pngkey.com/png/full/795-7951145_garden-salad.png",
      local: "Mediterranean"),
  Dish(
      name: "Caesar",
      shortDescription: "Mix Vegetables",
      price: 24,
      description:
          "Tear the lettuce leaves into bite-sized pieces and transfer them to a large salad bowl. Add the cucumber, tomatoes, and onion. Sprinkle with the oil, vinegar, and salt and pepper, and toss to combine.",
      time: 10,
      url: "https://www.pngkey.com/png/full/795-7951145_garden-salad.png",
      local: "Mediterranean"),
];
