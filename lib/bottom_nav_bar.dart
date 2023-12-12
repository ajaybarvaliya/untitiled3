import 'package:flutter/material.dart';
import 'package:untitled3/FreeDelivery.dart';
import 'package:untitled3/FreeDelivery2.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> screens = [
    FreeDelovery(),
    FreeDelovery2(),
    Center(
      child: Text("Menu"),
    ),
    Center(
      child: Text("Favorite"),
    ),
    Center(
      child: Text("Profile"),
    ),
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[select],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {});
            select = value;
          },
          currentIndex: select,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_rounded,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: ""),
            BottomNavigationBarItem(
              icon: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.pink.shade400,
                      image: DecorationImage(
                          image: AssetImage("assets/images/man.png"),
                          fit: BoxFit.fitWidth),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Positioned(
                    right: -2,
                    top: -2,
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                          radius: 2, backgroundColor: Colors.orange),
                    ),
                  )
                ],
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
