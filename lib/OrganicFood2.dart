import 'package:flutter/material.dart';

import 'OrganicFood3.dart';

class Organicfood2 extends StatefulWidget {
  const Organicfood2({Key? key}) : super(key: key);

  @override
  State<Organicfood2> createState() => _Organicfood2State();
}

class _Organicfood2State extends State<Organicfood2> {
  List image1 = [
    "assets/images/capsicum.png",
    "assets/images/cherry.png",
    "assets/images/coriander.png",
    "assets/images/mushrooms (1).png"
  ];
  List text1 = ["Vegetables", "Fruits", "Greens", "Mushrooms"];

  List image2 = [
    "assets/images/banana.png",
    "assets/images/strawberry.png",
    "assets/images/mushrooms.png",
    "assets/images/kiwi.png"
  ];
  List color1 = [
    Color(0xfffde9b4),
    Color(0xffffd8d3),
    Color(0xfffeeed5),
    Color(0xffe6f99f),
  ];
  List color2 = [
    Color(0xffdca84e),
    Color(0xfff19794),
    Color(0xff9a6f53),
    Color(0xff7d971b),
  ];
  List text2 = ["Banana", "Strawberry", "Champignon", "Kiwi"];
  List text3 = ["Ecuador", "Holland", "Ukraine", "New Zealand"];
  List text4 = [
    "\$1.50",
    "\$23.10",
    "\$3.55",
    "\$2.30",
  ];

  int change = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(
                    0xffbab63b,
                  ),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(40),
                  ),
                ),
                child: SafeArea(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.menu_sharp,
                              color: Colors.white,
                            ),
                            Spacer(),
                            Container(
                              height: 30,
                              width: 55,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Icon(
                                    Icons.shopping_bag_outlined,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: Color(0xffbab63b),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "4",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
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
                        height: 30,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 5),
                          constraints:
                              BoxConstraints(maxWidth: 300, maxHeight: 40),
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.search_rounded),
                          hintText: "Search foodstuffs",
                          hintStyle: TextStyle(
                            color: Color(0xffbab63b),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 170),
                child: Container(
                  height: 75,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            width: 75,
                            height: 65,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.shade400,
                                    offset: Offset(0, 2),
                                    spreadRadius: 0,
                                    blurRadius: 3),
                              ],
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Image.asset(
                                  image1[index],
                                  color: Color(0xffbab63b),
                                  scale: 14,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  text1[index],
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xffbab63b),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  "Popular Foodstuffs",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.2),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Organicfood3(),
                      ),
                    );
                  },
                  child: Text(
                    "View all",
                    style: TextStyle(
                      color: Color(0xffbab63b),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xffbab63b),
                  size: 13,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 4,
              padding: EdgeInsets.symmetric(horizontal: 15),
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.66,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: color1[index],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: Image.asset(
                          image2[index],
                          scale: 4.60,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          text2[index],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: color2[index],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          text3[index],
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              text4[index],
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Color(0xffb8b539),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(Icons.add, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
