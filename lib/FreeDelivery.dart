import 'dart:ffi';

import 'package:flutter/material.dart';

import 'FreeDelivery2.dart';

class FreeDelovery extends StatefulWidget {
  const FreeDelovery({Key? key}) : super(key: key);

  @override
  State<FreeDelovery> createState() => _FreeDeloveryState();
}

class _FreeDeloveryState extends State<FreeDelovery> {
  List deals = ["Hot Deals", "Deals", "Normal Deals"];
  List image1 = [
    "assets/images/combo 1.png",
    "assets/images/combo 1.png",
    "assets/images/combo 1.png",
  ];
  List image2 = [
    "assets/images/burgers.png",
    "assets/images/sushi1.png",
    "assets/images/Pizza.png"
  ];
  List image3 = [
    "assets/images/NYC pizza.jpg",
    "assets/images/John's Burgers.jpg",
    "assets/images/Italianoman.jpg"
  ];
  List text = ["Burgers", "Sushi", "Pizza"];
  List text2 = ["15 min", "30 min", "20 min"];
  List text3 = [
    "NYC Pizza",
    "John's Burgers",
    "italianoman",
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Icon(Icons.menu),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 10),
                      ),
                      Text(
                        "Matt",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: Colors.orange),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
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
                          radius: 7,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                              radius: 3, backgroundColor: Colors.orange),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Container(
                width: 320,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Text("East 42nd St, New yark",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                radius: 24,
                backgroundColor: Colors.orange,
                child: Icon(Icons.location_on, color: Colors.white, size: 19),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 205,
            color: Colors.red,
            child: Stack(
              children: [
                PageView.builder(
                  onPageChanged: (value) {
                    setState(() {});
                    select = value;
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 340,
                              height: 140,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 30),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Text(
                                      deals[index],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Text(
                                      "Free\nDelivery",
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: -4,
                              right: 20,
                              child: Image.asset(
                                image1[index],
                                scale: 11,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    );
                  },
                ),
                Positioned(
                  bottom: 5,
                  right: 0,
                  left: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Container(
                        height: 5,
                        width: 5,
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                            color: select == index
                                ? Colors.orange
                                : Colors.grey.shade500,
                            shape: BoxShape.circle),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  "Favorites",
                  style: TextStyle(
                      fontSize: 17,
                      letterSpacing: 0.1,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 17,
                  backgroundColor: Colors.orange,
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 180,
            child: Stack(
              children: [
                PageView.builder(
                  onPageChanged: (value) {
                    setState(() {});
                    select = value;
                  },
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Row(
                      children: List.generate(
                        3,
                        (index) => Container(
                          width: 320 / 3,
                          height: 150,
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Image.asset(
                                image2[index],
                                // scale: 6,
                                width: 90,
                              ),
                              Spacer(),
                              Text(text[index],
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                text2[index],
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Container(
                        height: 5,
                        width: 5,
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                            color: select == index
                                ? Colors.orange
                                : Colors.grey.shade500,
                            shape: BoxShape.circle),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  "Near you",
                  style: TextStyle(
                      fontSize: 17,
                      letterSpacing: 0.1,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 17,
                  backgroundColor: Colors.orange,
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 95,
                      width: 150,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              image3[index],
                            ),
                            fit: BoxFit.fitWidth),
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(6),
                                bottomLeft: Radius.circular(6),
                              ),
                            ),
                            child: Favorite(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        text3[index],
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  bool favorite = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {});
        favorite = !favorite;
      },
      child: favorite == true
          ? Icon(
              Icons.favorite_outline,
              color: Colors.orange,
              size: 18,
            )
          : Icon(
              Icons.favorite,
              color: Colors.orange,
              size: 18,
            ),
    );
  }
}
