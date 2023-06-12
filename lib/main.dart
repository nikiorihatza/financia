import 'package:flutter/material.dart';
import 'package:flutter_financia/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FINANCIA',
      theme: ThemeData(
        fontFamily: 'Croogla'
      ),
      home: const AppPage(title: 'FINANCIA - HOME'),
    );
  }
}
