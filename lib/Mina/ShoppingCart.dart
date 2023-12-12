import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'NextPage.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  List product = [
    {
      "image": "assets/images/Vegetable (2).png",
      "color": Color(0xfffff1dc),
      "name": "Vegetable",
      "prise": "\$12",
    },
    {
      "image": "assets/images/Soup (3).png",
      "color": Color(0xfffee5e9),
      "name": "Soup",
      "prise": "\$10",
    },
    {
      "image": "assets/images/Drinks (2).png",
      "color": Color(0xffe1fbc6),
      "name": "Drinks",
      "prise": "\$12",
    },
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffef2dc),
      body: Column(
        children: [
          Container(
            height: 700,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        InkResponse(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NextPage(),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new_sharp,
                            color: Colors.grey.shade500,
                            size: 19,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey.shade500,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Text(
                        "Shopping cart",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Total",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3),
                        child: Text(
                          "\$34",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 400,
                  child: ListView.builder(
                    itemCount: 3,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              color: product[index]["color"],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              product[index]["image"],
                              scale: 7,
                            ),
                          ),
                          SizedBox(
                            width: 17,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product[index]["name"],
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                product[index]["prise"],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          change(),
                        ],
                      );
                    },
                  ),
                ),
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  padding: EdgeInsets.all(6),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: Container(
                      height: 70,
                      width: 300,
                      child: Center(
                        child: Text("APPLY COUPON",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            )),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text("Total",
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "\$34",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text("Tax",
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "\$00",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: 180,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text("Continue",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

class change extends StatefulWidget {
  const change({Key? key}) : super(key: key);

  @override
  State<change> createState() => _changeState();
}

class _changeState extends State<change> {
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
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  spreadRadius: 1,
                  blurRadius: 2,
                ),
              ],
            ),
            child: Icon(Icons.remove, size: 15),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "${select}",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {
            setState(() {});

            select++;
          },
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  spreadRadius: 1,
                  blurRadius: 2,
                ),
              ],
            ),
            child: Icon(Icons.add, size: 15),
          ),
        ),
        SizedBox(
          width: 7,
        ),
        Icon(
          Icons.delete_outline,
          color: Colors.grey.shade500,
          size: 19,
        )
      ],
    );
  }
}
