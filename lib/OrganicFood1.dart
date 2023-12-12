import 'package:flutter/material.dart';

import 'OrganicFood2.dart';

class Organicfood1 extends StatefulWidget {
  const Organicfood1({Key? key}) : super(key: key);

  @override
  State<Organicfood1> createState() => _Organicfood1State();
}

class _Organicfood1State extends State<Organicfood1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbab63b),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 90,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Get\nOrganic Food",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Find the freshest food and get\nfree delivery in your town",
              style: TextStyle(
                  letterSpacing: 0.2, color: Colors.white, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Organicfood2(),
                  ),
                );
              },
              child: Container(
                width: 180,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffbab63b),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 166,
            ),
            child: Image.asset("assets/images/women-removebg-preview.png"),
          )
        ],
      ),
    );
  }
}
