import 'package:flutter/cupertino.dart';

class Dept {
  int id;
  String title;
  double totalAmount;
  String installmentType;
  double installmentAmount;

  Dept({
    required this.id,
    required this.title,
    required this.totalAmount,
    required this.installmentType,
    required this.installmentAmount
  });
}