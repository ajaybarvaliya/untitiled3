import 'package:flutter/material.dart';

class Drawerdemo extends StatefulWidget {
  const Drawerdemo({Key? key}) : super(key: key);

  @override
  State<Drawerdemo> createState() => _DrawerdemoState();
}

class _DrawerdemoState extends State<Drawerdemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
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
