import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List image = [
    "",
    "assets/images/NYC pizza.jpg",
    "assets/images/SushiMaster.jpg",
    "assets/images/John's Burgers.jpg",
  ];
  List text1 = [
    "Salads cook",
    "Kitchen flowers",
    "Sushi master",
    " NYC Burger",
  ];
  List text2 = [
    "18 courses",
    "24 courses",
    "10 courses",
    "15 courses",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 360,
                height: 160,
                decoration: BoxDecoration(
                  color: Color(
                    0xff68bca2,
                  ),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "My home page",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                bottom: -90,
                child: Container(
                  height: 170,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Color(
                            0xff68bca2,
                          ),
                          offset: Offset(0, 0),
                          blurRadius: 2.9,
                          spreadRadius: 0),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            radius: 28,
                            backgroundImage: NetworkImage(
                                "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhpe7-_576Z2_ByrnziPMtvKwKvzDszknV8CdjMY3EKfSVInNIgnmi9A6gSAYL37hFHTE6PfiArqrA1lO0SDZ8oKZnw3jh0QY4ZVeb8L61d3zkO088fGPhyajAA3w0RuTzbcy4iT7EKAbBXBkH_s50kGxae9FL3jEq3OkSjLBqObORPyE_e9TZxFZthmw/w213-h320/pexels-dreamlens-production-2913125-min.jpg"),
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Anastasia",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "ID: 12986504563",
                                style: TextStyle(
                                    color: Colors.grey.shade600, fontSize: 13),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "56",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Following",
                                  style: TextStyle(color: Colors.grey.shade500),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "786",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Follower",
                                  style: TextStyle(color: Colors.grey.shade500),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "12",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Tags",
                                  style: TextStyle(color: Colors.grey.shade500),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 110,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Cookbooks",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 4,
              padding: EdgeInsets.symmetric(horizontal: 15),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.53,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    index == 0
                        ? Container(
                            width: 200,
                            height: 250,
                            decoration: BoxDecoration(
                              //  color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/Salad2.jpg"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(10),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    Container(
                                      height: 110,
                                      width: 75,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/Salad1.jpg"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(10),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 110,
                                      width: 75,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/salad.png"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        : Container(
                            width: 200,
                            height: 250,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                  image: AssetImage(
                                    image[index],
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      text1[index],
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      text2[index],
                      style:
                          TextStyle(fontSize: 13, color: Colors.grey.shade600),
                    ),
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
