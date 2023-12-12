import 'package:flutter/material.dart';

import 'Edeka2.dart';

class Edeka1 extends StatefulWidget {
  Edeka1({Key? key}) : super(key: key);

  @override
  State<Edeka1> createState() => _Edeka1State();
}

class _Edeka1State extends State<Edeka1> {
  List image = [
    'assets/images/bakery.png',
    'assets/images/fruits.png',
    'assets/images/vegetable.png',
    'assets/images/milk.png'
  ];

  List text = ['Bakery', 'Fruits', 'Vegetables', 'Milk'];

  List image2 = [
    'assets/images/lemon.png',
    'assets/images/banana.png',
    'assets/images/grapes.png',
    'assets/images/orange.png'
  ];

  List text2 = ["Lemon", 'Banana', 'Grape', 'Orange'];

  List text3 = [
    'Bergamo italy',
    'Cattier Italiano',
    'Cattier Italiano',
    'Cattier Italiano',
  ];

  List text4 = ['€1,10', '€2.05', '€3.15', '€2'];

  List text5 = ['€2', '€3', '€4', '€3.10'];

  List offer = ["25% Off", "", "", "15% off"];

  int select = 0;
  bool Favourite = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          Column(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Icon(Icons.menu),
                      Spacer(),
                      Text(
                        "EDEKA",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Spacer(),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(Icons.share_outlined,
                            color: Colors.blue, size: 20),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(Icons.favorite_outline,
                            color: Colors.pink, size: 20),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        constraints:
                            BoxConstraints(maxWidth: 260, maxHeight: 45),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search_rounded),
                        hintText: "Search product here ",
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
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Edeka2(),
                          ),
                        );
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.tune),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 80,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkResponse(
                          onTap: () {
                            setState(
                              () {
                                select = index;
                              },
                            );
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: select == index
                                    ? Colors.green
                                    : Colors.white),
                            child: Image.asset(image[index],
                                scale: 12,
                                color: select == index
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          text[index],
                          style: TextStyle(
                              fontSize: 12,
                              color:
                                  select == index ? Colors.black : Colors.grey),
                        )
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 4,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.6),
                  itemBuilder: (context, index) {
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 110),
                                child: favorite(),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Image.asset(image2[index], scale: 6),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  text2[index],
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  text3[index],
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    text4[index],
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    text5[index],
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 15),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: Icon(Icons.add, color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        index == 0 || index == 3
                            ? Container(
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: index == 0 || index == 3
                                    ? Center(
                                        child: Text(
                                          "${offer[index]}",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    : SizedBox())
                            : SizedBox(),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 5,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Total:",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Text(
                      "3x",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "€49.5",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Cart",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
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
