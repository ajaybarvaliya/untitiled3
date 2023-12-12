import 'package:flutter/material.dart';

class Floatingactionbutton extends StatefulWidget {
  const Floatingactionbutton({Key? key}) : super(key: key);

  @override
  State<Floatingactionbutton> createState() => _FloatingactionbuttonState();
}

class _FloatingactionbuttonState extends State<Floatingactionbutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.blue,
        // tooltip: "Hello",
        autofocus: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        foregroundColor: Colors.white,
        child: Icon(Icons.message),
        backgroundColor: Colors.teal,
        onPressed: () {},
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text("abc@gmail.com"),
              accountName: Text("Abc"),
              currentAccountPicture: CircleAvatar(),
              decoration: BoxDecoration(color: Colors.teal),
              currentAccountPictureSize: Size.square(80),
            ),
            SizedBox(
              height: 580,
              child: ListView.builder(
                itemCount: 10,
                padding: EdgeInsets.symmetric(vertical: 0),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profile"),
                    subtitle: Text("Edit profile"),
                    trailing: Icon(Icons.edit),
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
