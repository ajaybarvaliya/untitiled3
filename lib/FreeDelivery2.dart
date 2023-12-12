import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

import 'FreeDelivery.dart';

class FreeDelovery2 extends StatefulWidget {
  const FreeDelovery2({Key? key}) : super(key: key);

  @override
  State<FreeDelovery2> createState() => _FreeDelovery2State();
}

class _FreeDelovery2State extends State<FreeDelovery2> {
  List foodimage = [
    "assets/images/NYC pizza.jpg",
    "assets/images/Italianoman.jpg",
    "assets/images/John's Burgers.jpg",
    "assets/images/SushiMaster.jpg"
  ];
  List text = ["All", "Burgers", "Pizza", "Sushi", "Thai", "Others"];
  List text1 = [
    "New York City Pizza",
    "Italianman",
    "John's Burgers",
    "SushiMaster"
  ];
  List text2 = ["4.5", "4.9", "4.6", "4.4"];
  List text3 = ["20 min", "25 min", "23 min", "35 min"];
  List text4 = ["Pizza", "Italian", "Burgers", "Sushi"];
  int select = 0;
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Stack(
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
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 30,
            color: Colors.grey.shade500,
            thickness: 0.55,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  "321",
                  style: TextStyle(
                      fontSize: 17,
                      letterSpacing: 0.1,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Restaurants",
                  style: TextStyle(
                      fontSize: 17,
                      letterSpacing: 0.1,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.orange,
                  child: Text(
                    "0",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Filters",
                  style: TextStyle(
                      //fontSize: 17,
                      letterSpacing: 0.1,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.expand_more,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            child: ListView.builder(
              itemCount: 6,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {});
                    select = index;
                  },
                  child: Container(
                    height: 40,
                    width: 80,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: select == index ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: select == index
                              ? Colors.black
                              : Colors.grey.shade300,
                          width: 2),
                    ),
                    child: Center(
                      child: Text(
                        text[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:
                                select == index ? Colors.white : Colors.black),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            height: 30,
            color: Colors.grey.shade500,
            thickness: 0.55,
          ),
          Expanded(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 80,
                      width: 340,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              image: DecorationImage(
                                  image: AssetImage(foodimage[index]),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(6),
                                      bottomRight: Radius.circular(6),
                                    ),
                                  ),
                                  child: Favorite(),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text(
                                  text1[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.orange,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    text2[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.timer_outlined,
                                    color: Colors.orange,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    text3[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 95,
                                  ),
                                  Text(
                                    text4[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    DottedLine(
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      lineThickness: 1.0,
                      dashLength: 4.0,
                      dashColor: Colors.black,
                      dashRadius: 0.50,
                      dashGapLength: 1.0,
                      dashGapColor: Colors.transparent,
                      dashGapRadius: 0.0,
                    ),
                  ],
                );
              },
              itemCount: foodimage.length,
              separatorBuilder: (BuildContext context, int index) {
                return index == 1
                    ? Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 60,
                                width: 340,
                                margin: EdgeInsets.symmetric(vertical: 20),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Get 10% ",
                                      style: TextStyle(
                                          fontSize: 17,
                                          letterSpacing: 0.1,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "Off Code ",
                                      style: TextStyle(
                                          fontSize: 17,
                                          letterSpacing: 0.1,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                right: 10,
                                top: 5,
                                child: Image.asset(
                                  "assets/images/popcorn_and_pepsi_combo.png",
                                  scale: 6,
                                ),
                              )
                            ],
                          ),
                          DottedLine(
                            direction: Axis.horizontal,
                            lineLength: double.infinity,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor: Colors.black,
                            dashRadius: 0.50,
                            dashGapLength: 1.0,
                            dashGapColor: Colors.transparent,
                            dashGapRadius: 0.0,
                          ),
                        ],
                      )
                    : SizedBox();
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
