import 'package:flutter/material.dart';

class PopularRecipesPage extends StatefulWidget {
  const PopularRecipesPage({Key? key}) : super(key: key);

  @override
  State<PopularRecipesPage> createState() => _PopularRecipesPageState();
}

class _PopularRecipesPageState extends State<PopularRecipesPage> {
  List image = [
    "assets/images/Omlate.jpg",
    "assets/images/Salad1.jpg",
    "assets/images/cockies.jpg",
    "assets/images/Salad2.jpg",
    "assets/images/Egg.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Popular recipes",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 15),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        height: 115,
                        width: 140,
                        margin: EdgeInsets.symmetric(vertical: 10),
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
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Acai bowl",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Green peppers Apple",
                            style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 16),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Green peppers A-pple",
                            style: TextStyle(
                                color: Colors.grey.shade500, fontSize: 16),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                "\$ 12.25",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xff68bca2),
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Buy()
                            ],
                          ),
                        ],
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

class Buy extends StatefulWidget {
  const Buy({Key? key}) : super(key: key);

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  bool buy = false;
  @override
  Widget build(BuildContext context) {
    return InkResponse(
        onTap: () {
          setState(() {});
          buy = !buy;
        },
        child: buy == true
            ? Container(
                height: 30,
                width: 65,
                decoration: BoxDecoration(
                  color: Color(0xff68bca2),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xff68bca2), width: 1.5),
                ),
                child: Center(
                  child: Text(
                    "Buy",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              )
            : Container(
                height: 30,
                width: 65,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xff68bca2), width: 1.5),
                ),
                child: Center(
                  child: Text(
                    "Buy",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff68bca2),
                    ),
                  ),
                ),
              ));
  }
}
