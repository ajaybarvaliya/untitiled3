import 'dart:ffi';

import 'package:flutter/material.dart';

class Bigmadeburger3 extends StatefulWidget {
  const Bigmadeburger3({Key? key}) : super(key: key);

  @override
  State<Bigmadeburger3> createState() => _Bigmadeburger3State();
}

class _Bigmadeburger3State extends State<Bigmadeburger3> {
  List image1 = [
    "assets/images/big mad burger.jpg",
    "assets/images/pineapple pork.jpg"
  ];
  List name = [
    "Big Made Burger",
    "Pineapple pork",
  ];
  List prise1 = ["\$21.90", "\$24.60"];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back_sharp),
                    Text(
                      "Order details",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.1,
                          fontSize: 15),
                    ),
                    Icon(Icons.help_outline_outlined, size: 19),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Heaven's food",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 0.1),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(
                  Icons.timer,
                  color: Colors.orange,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Delivery / As soon as possible",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 15,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.orange,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "800 Cheese avenue, NYC",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 15,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 430,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        "Your order",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: 0.1),
                      ),
                      Spacer(),
                      Text("See menu"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  // color: Colors.grey,
                  child: ListView.builder(
                    itemCount: 2,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 55,
                        width: 340,
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            Container(
                              height: 70,
                              width: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage(
                                      image1[index],
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  name[index],
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  prise1[index],
                                  style: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 13),
                                )
                              ],
                            ),
                            Spacer(),
                            valueselect(),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        "Subtotal",
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                      Spacer(),
                      Text(
                        "\$37.50",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        "Delivery",
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                      Spacer(),
                      Container(
                        height: 20,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "Free",
                            style: TextStyle(
                                color: Colors.grey.shade800, fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 0.1),
                      ),
                      Spacer(),
                      Text(
                        "\$37"
                        ".50",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 0.1),
                      ),
                    ],
                  ),
                ),
              ],
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
                  "Place order",
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

class valueselect extends StatefulWidget {
  const valueselect({Key? key}) : super(key: key);

  @override
  State<valueselect> createState() => _valueselectState();
}

class _valueselectState extends State<valueselect> {
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {});
            if (select > 0) {
              select--;
            }
          },
          child: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Icon(Icons.remove, color: Colors.white, size: 15),
          ),
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          "${select}",
        ),
        SizedBox(
          width: 6,
        ),
        GestureDetector(
          onTap: () {
            setState(() {});
            select++;
          },
          child: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Icon(Icons.add, color: Colors.white, size: 15),
          ),
        ),
      ],
    );
  }
}
