import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'NextPage.dart';

class HomePageMina extends StatefulWidget {
  const HomePageMina({Key? key}) : super(key: key);

  @override
  State<HomePageMina> createState() => _HomePageMinaState();
}

class _HomePageMinaState extends State<HomePageMina> {
  List name = ["Soup", "Vega", "Chicken", "Drink"];
  List image = [
    "assets/images/soup (1).png",
    "assets/images/vega.png",
    "assets/images/chicken.png",
    "assets/images/drinks.png"
  ];
  List color = [
    Color(0xfffef2dc),
    Color(0xfffee4e7),
  ];
  List textcolor = [
    Color(0xffe9b054),
    Color(0xffde6986),
  ];
  List image1 = ["assets/images/v1.png", "assets/images/v2.png"];
  List text1 = ["Veggie Stuffed Shells", "Veggie Stuffed"];
  List text2 = ["\$12", "\$14"];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: GNav(
          hoverColor: Colors.grey, // tab button hover color
          haptic: true, // haptic feedback
          tabBorderRadius: 20,
          curve: Curves.easeInExpo, // tab animation curves
          duration: Duration(milliseconds: 900), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          color: Colors.grey[800], // unselected icon color
          activeColor: Colors.white, // selected icon and text color
          iconSize: 20, // tab button icon size
          tabBackgroundColor: Colors.orange, // selected tab background color
          padding: EdgeInsets.symmetric(
              horizontal: 10, vertical: 10), // navigation bar padding
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.shopping_cart_outlined,
              text: 'Shopping',
            ),
            GButton(
              icon: Icons.notifications_none,
              text: 'Notificattion',
            ),
            GButton(
              icon: Icons.person_outline,
              text: 'Profile',
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      "Hi,Mina!",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://images.pexels.com/photos/675920/pexels-photo-675920.jpeg?cs=srgb&dl=pexels-min-an-675920.jpg&fm=jpg",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Center(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                  constraints: BoxConstraints(
                    maxHeight: 70,
                    maxWidth: 330,
                  ),
                  fillColor: Colors.grey.shade300,
                  filled: true,
                  prefixIcon: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.search_rounded,
                      color: Color(0xffb1b2b6),
                    ),
                  ),
                  suffixIcon: Icon(
                    Icons.mic,
                    color: Colors.orange,
                  ),
                  hintText: "Search Food...",
                  hintStyle: TextStyle(
                    color: Color(0xffb1b2b6),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              height: 110,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InkResponse(
                        onTap: () {
                          setState(() {});
                          select = index;
                        },
                        child: Container(
                          height: 70,
                          width: 70,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              select == index
                                  ? BoxShadow(
                                      color: Colors.orange,
                                      offset: Offset(0, 2),
                                      spreadRadius: 0,
                                      blurRadius: 8)
                                  : BoxShadow(color: Colors.transparent)
                            ],
                          ),
                          child: Image.asset(image[index],
                              scale: 13,
                              color: select == index
                                  ? Colors.orange
                                  : Colors.grey.shade500),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        name[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: select == index
                                ? Colors.black
                                : Colors.grey.shade500),
                      )
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              height: 400,
              //color: Colors.orange,
              child: ListView.builder(
                itemCount: 2,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      InkResponse(
                        onTap: () {
                          index == 0
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NextPage(),
                                  ),
                                )
                              : SizedBox();
                        },
                        child: Container(
                          height: 350,
                          width: 220,
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            color: color[index],
                            boxShadow: [
                              BoxShadow(
                                color: color[index],
                                offset: Offset(0, 10),
                                blurRadius: 20,
                                spreadRadius: 5,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Center(
                                child: Image.asset(image1[index], scale: 3),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Center(
                                child: Text(
                                  text1[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: textcolor[index],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text(
                                  text2[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: favorite(),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class favorite extends StatefulWidget {
  const favorite({Key? key}) : super(key: key);

  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
  bool isfavorite = false;
  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        setState(() {});
        isfavorite = !isfavorite;
      },
      child: isfavorite == true
          ? Icon(
              Icons.favorite,
              color: Colors.red,
            )
          : Icon(
              Icons.favorite_border_rounded,
              color: Colors.grey,
            ),
    );
  }
}
