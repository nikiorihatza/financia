import 'package:flutter/cupertino.dart';

class Goal {
  int id;
  String title;
  double amount;
  DateTime enddate;

  Goal({
    required this.id,
    required this.title,
    required this.amount,
    required this.enddate
  });
}