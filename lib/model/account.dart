import 'package:flutter_financia/model/transaction.dart';
import 'package:flutter_financia/model/dept.dart';
import 'package:flutter_financia/model/goal.dart';

class Account {
  int id;
  String name;
  DateTime birthdate;
  double balance;
  List<Transaction> transactions;
  List<Dept> depts;

  Account({
    required this.id,
    required this.name,
    required this.birthdate,
    required this.balance,
    required this.transactions,
    required this.depts
  });
}