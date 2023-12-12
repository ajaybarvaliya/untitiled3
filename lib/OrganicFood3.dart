import 'package:flutter/material.dart';

import 'OrganicFood2.dart';

class Organicfood3 extends StatefulWidget {
  const Organicfood3({Key? key}) : super(key: key);

  @override
  State<Organicfood3> createState() => _Organicfood3State();
}

class _Organicfood3State extends State<Organicfood3> {
  List fruits = [
    {
      "image": "assets/images/peach.png",
      "color": Color(0xffffc7b5),
      "name": "Peach",
      "colorname": Color(0xffd98d74),
      "country": "spain",
      "price": "\$3.15",
      "weight": "(kg)",
    },
    {
      "image": "assets/images/basil.png",
      "color": Color(0xffd4ffcf),
      "name": "Basil",
      "colorname": Color(0xff4ca340),
      "country": "italy",
      "price": "\$1.50",
      "weight": "(pc)",
    },
    {
      "image": "assets/images/pumpkin.png",
      "color": Color(0xfffee299),
      "name": "Pumpkin",
      "colorname": Color(0xffeb993f),
      "country": "Ukraine",
      "price": "\$3.50",
      "weight": "(kg)",
    },
    {
      "image": "assets/images/tomato.png",
      "color": Color(0xffffa9a4),
      "name": "Tomato",
      "colorname": Color(0xffdc5354),
      "country": "Holland",
      "price": "\$5.75",
      "weight": "(kg)",
    },
  ];
  int change = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Organicfood2(),
                        ),
                      );
                    },
                    child: Icon(Icons.arrow_back_ios_new_outlined,
                        size: 20, color: Colors.grey.shade500),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "My Cart",
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                  ),
                  Spacer(),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color(0xfffbbf59),
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/images/businesswoman (1).png",
                          ),
                          scale: 20),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                padding: EdgeInsets.symmetric(horizontal: 15),
                itemBuilder: (context, index) {
                  return Container(
                    height: 150,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          width: 130,
                          height: 150,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: fruits[index]["color"],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            fruits[index]["image"],
                            scale: 6,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              fruits[index]["name"],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                  letterSpacing: 0.2,
                                  color: fruits[index]["colorname"]),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              fruits[index]["country"],
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              fruits[index]["price"],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Valuechange(),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  fruits[index]["weight"],
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 110,
              decoration: BoxDecoration(
                color: Color(0xffbab63b),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total:",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$13.90",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Container(
                          width: 150,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffbab63b),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Valuechange extends StatefulWidget {
  const Valuechange({Key? key}) : super(key: key);

  @override
  State<Valuechange> createState() => _ValuechangeState();
}

class _ValuechangeState extends State<Valuechange> {
  int change = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {});

            change++;
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300, spreadRadius: 0, blurRadius: 2)
              ],
            ),
            child: Icon(Icons.add, size: 13),
          ),
        ),
        Container(
          height: 30,
          width: 40,
          decoration: BoxDecoration(
            color: Color(0xfff6f7e9),
          ),
          child: Center(child: Text("${change}")),
        ),
        GestureDetector(
          onTap: () {
            setState(() {});
            if (change > 0) {
              change--;
            }
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300, spreadRadius: 0, blurRadius: 2)
              ],
            ),
            child: Icon(Icons.remove, size: 13),
          ),
        ),
      ],
    );
  }
}
