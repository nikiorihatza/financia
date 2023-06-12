import 'package:flutter/cupertino.dart';

class Transaction {
  int id;
  String title;
  String type;
  double amount;
  String category;

  Transaction({
    required this.id,
    required this.title,
    required this.type,
    required this.amount,
    required this.category
  });
}