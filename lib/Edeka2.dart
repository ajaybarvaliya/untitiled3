import 'package:flutter/material.dart';

import 'Edeka1.dart';

class Edeka2 extends StatefulWidget {
  Edeka2({Key? key}) : super(key: key);

  @override
  State<Edeka2> createState() => _Edeka2State();
}

class _Edeka2State extends State<Edeka2> {
  List name1 = [
    'Fast Delivery',
    'Stores in my area',
    'Previous Orders',
    'Popular Orders'
  ];

  List icon = [
    Icons.airport_shuttle,
    Icons.location_on,
    Icons.list_alt,
    Icons.star_border,
  ];
  List select = ["Delivery", "Pick up"];

  int check = 0;

  double valueslider = 0;

  double valueslider2 = 0;

  int containercolor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Edeka1(),
                        ),
                      );
                    }),
                    child: Icon(
                      Icons.arrow_back_ios_new_sharp,
                      size: 17,
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Text(
                    "Filter",
                    style: TextStyle(fontSize: 17, color: Colors.grey.shade600),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 370,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.green.shade100,
                        radius: 25,
                        child: Icon(icon[index], color: Colors.green),
                      ),
                      title: Text(
                        name1[index],
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: InkResponse(
                        onTap: () {
                          setState(
                            () {
                              check = index;
                            },
                          );
                        },
                        child: check == index
                            ? Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              )
                            : Icon(Icons.circle_outlined, color: Colors.grey),
                      ),
                    ),
                    Divider(
                      endIndent: 20,
                      indent: 20,
                      thickness: 1,
                      height: 30,
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 23,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "MIN ORDER AMOUNT",
              style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          SliderTheme(
            data: SliderThemeData(
                trackHeight: 2,
                activeTrackColor: Colors.green,
                inactiveTrackColor: Colors.grey,
                activeTickMarkColor: Colors.white,
                thumbColor: Colors.white,
                valueIndicatorTextStyle:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                valueIndicatorColor: Colors.transparent),
            child: Slider.adaptive(
              min: 0,
              max: 100,
              divisions: 20,
              label: "\€${valueslider.toStringAsFixed(0)}",
              value: valueslider,
              onChanged: (value) {
                setState(() {});
                valueslider = value;
              },
            ),
          ),
          Divider(indent: 20, endIndent: 20, thickness: 1),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "MIN ORDER AMOUNT",
              style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SliderTheme(
            data: SliderThemeData(
                trackHeight: 2,
                activeTrackColor: Colors.green,
                inactiveTrackColor: Colors.grey,
                activeTickMarkColor: Colors.white,
                thumbColor: Colors.white,
                valueIndicatorTextStyle:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                valueIndicatorColor: Colors.transparent),
            child: Slider.adaptive(
              min: 0,
              max: 100,
              divisions: 5,
              //  label: "\€${valueslider.toStringAsFixed(0)}",
              value: valueslider2,
              onChanged: (value) {
                setState(() {});
                valueslider2 = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "0.5-2km",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade400,
                    fontSize: 12,
                  ),
                ),
                Text(
                  "3-5km",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade400,
                    fontSize: 12,
                  ),
                ),
                Text(
                  "6-8km",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade400,
                    fontSize: 12,
                  ),
                ),
                Text(
                  "9-10km",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade400,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(indent: 20, endIndent: 20, thickness: 1),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "ORDER TYPE",
              style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                2,
                (index) => InkResponse(
                  onTap: () {
                    setState(() {});
                    containercolor = index;
                  },
                  child: Container(
                    height: 45,
                    width: 150,
                    decoration: BoxDecoration(
                      color: containercolor == index
                          ? Colors.green
                          : Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          "${select[index]}",
                          style: TextStyle(
                              fontSize: 15,
                              color: containercolor == index
                                  ? Colors.white
                                  : Colors.black),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        containercolor == index
                            ? Icon(
                                Icons.check_circle,
                                color: Colors.white,
                                size: 19,
                              )
                            : Icon(
                                Icons.circle_outlined,
                                size: 19,
                              )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(indent: 20, endIndent: 20, thickness: 1, height: 33),
        ],
      ),
    );
  }
}
