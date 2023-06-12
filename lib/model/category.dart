import 'package:flutter/cupertino.dart';

class Category {
  List<String> categories = ['Income', 'Outcome'];

  late String category;

  Category(int number) {
    category = categories[number - 1];
  }
}