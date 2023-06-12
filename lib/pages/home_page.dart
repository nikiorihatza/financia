import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_financia/pages/budget_page.dart';
import 'package:flutter_financia/pages/goal_page.dart';
import 'package:flutter_financia/pages/profile_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key, required this.title});

  final String title;

  @override
  State<AppPage> createState() => _AppState();
}

class _AppState extends State<AppPage> {

  @override
  Widget build(BuildContext context) {
    bool loggedIn = true;

    final _pages = <Widget>[
      HomePage(),
      BudgetPage(),
      GoalPage(),
      ProfilePage()
    ];

    int _selectedIndex = 0;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(58, 16, 120, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Image.asset('lib/assets/logo.png', scale: 2)
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Change the color as needed
          borderRadius: BorderRadius.circular(16), // Adjust the border radius as needed
        ),
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 40),
        child: SizedBox(
          height: 50,
          child: GNav(
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            gap: 8,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              selectedIndex: _selectedIndex,
              tabs: const [
                GButton(
                  icon: CupertinoIcons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: CupertinoIcons.money_dollar_circle,
                  text: 'Balance',
                ),
                GButton(
                  icon: FontAwesomeIcons.trophy,
                  text: 'Goals',
                ),
                GButton(
                  icon: CupertinoIcons.person,
                  text: 'Profile',
                )
              ]
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.fromLTRB(40, 20, 0, 0),
              child: const Text(
                'Welcome back, \n' + 'Name',
                style: TextStyle(
                    fontFamily: 'Croogla',
                    color: Colors.white,
                    fontSize: 32
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(170, 55, 0, 0),
              child: Image.asset('lib/assets/piggybank_3d.png', scale: 2,),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.fromLTRB(40, 0, 20, 0),
          child: const Text(
              'What do you want to do today?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32
            ),
          ),
        ),
        Row(
          children: [
            Container(
              child: Column(
                children: [

                ],
              ),
            ),
            Container(
              child: Column(
                children: [

                ],
              ),
            )
          ],
        )
      ],
    );
  }
}