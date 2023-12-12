import 'package:flutter/material.dart';

import 'ExplorePage.dart';
import 'HomePage.dart';
import 'PopularRecipesPage.dart';

class bottomnavbarfood extends StatefulWidget {
  const bottomnavbarfood({Key? key}) : super(key: key);

  @override
  State<bottomnavbarfood> createState() => _bottomnavbarfoodState();
}

class _bottomnavbarfoodState extends State<bottomnavbarfood> {
  List<Widget> screen = [
    ExplorePage(),
    PopularRecipesPage(),
    HomePage(),
  ];
  int select = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[select],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {});
          select = value;
        },
        currentIndex: select,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey.shade500,
        selectedItemColor: Color(0xff68bca2),
        iconSize: 27,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star_border,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
      ),
    );
  }
}
