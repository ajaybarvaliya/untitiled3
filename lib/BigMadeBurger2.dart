import 'dart:ffi';

import 'package:flutter/material.dart';

import 'BigMadeBurger1.dart';

class Bigmadeburger2 extends StatefulWidget {
  const Bigmadeburger2({Key? key}) : super(key: key);

  @override
  State<Bigmadeburger2> createState() => _Bigmadeburger2State();
}

class _Bigmadeburger2State extends State<Bigmadeburger2> {
  List text1 = [
    "Potato wedges",
    "Corn on the cob",
    "Corns",
  ];
  List image = [
    "assets/images/big mad burger.jpg",
    "assets/images/pineapple pork.jpg",
  ];
  int select = 0;
  int selected = 0;
  bool isfavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            child: Stack(
              children: [
                PageView.builder(
                  onPageChanged: (value) {
                    setState(() {});
                    selected = value;
                  },
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 360,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            image: AssetImage(
                              image[index],
                            ),
                            fit: BoxFit.cover),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 40),
                      ),
                    );
                  },
                ),
                Positioned(
                  bottom: 10,
                  right: 0,
                  left: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      2,
                      (index) => Container(
                        width: 8,
                        height: 8,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: selected == index
                                ? Colors.orange
                                : Colors.white),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 30,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Bigmadeburger1(),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.black38,
                      child: Icon(Icons.arrow_back_sharp, color: Colors.white),
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 30,
                  child: favorite(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Big Mad Burger",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 0.1),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Potato Bun,cheddar cheese, beef, cucumber, red\nonion, iceberg lettuce, avocado, tomato",
              style: TextStyle(color: Colors.grey.shade600, height: 1.5),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Choose addition",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          letterSpacing: 0.1),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Required",
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(Icons.expand_less, color: Colors.grey.shade600),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 210,
            color: Colors.white,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 3,
              padding: EdgeInsets.symmetric(horizontal: 15),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {});
                    select = index;
                  },
                  child: ListTile(
                    leading: select == index
                        ? Icon(Icons.check_circle)
                        : Icon(Icons.circle_outlined),
                    title: Text(
                      text1[index],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: select == index
                        ? Text(
                            "Recommended",
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          )
                        : SizedBox(),
                  ),
                );
              },
            ),
          ),
          Spacer(),
          Center(
            child: Container(
              height: 55,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Add (1) to cart - 12,90",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.1),
                ),
              ),
            ),
          ),
          Spacer(),
        ],
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
          ? CircleAvatar(
              backgroundColor: Colors.black54,
              child: Icon(
                Icons.favorite,
                color: Colors.orange,
              ),
            )
          : CircleAvatar(
              backgroundColor: Colors.black54,
              child: Icon(
                Icons.favorite_border_rounded,
                color: Colors.orange,
              ),
            ),
    );
  }
}
