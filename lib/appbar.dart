import 'package:flutter/material.dart';

class AppBarDemo extends StatefulWidget {
  const AppBarDemo({Key? key}) : super(key: key);

  @override
  State<AppBarDemo> createState() => _AppBarDemoState();
}

class _AppBarDemoState extends State<AppBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        toolbarHeight: 80,
        // toolbarOpacity: 0.7,
        leadingWidth: 50,
        titleSpacing: 0,
        backgroundColor: Colors.teal,
        leading: Icon(Icons.menu),
        // centerTitle: true,
        title: Text("WhatsApp"),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10),
          PopupMenuButton(
            icon: Icon(Icons.menu),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("Settings"),
                ),
                PopupMenuItem(
                  child: Text("Privacy"),
                ),
                PopupMenuItem(
                  child: Text("Payments"),
                ),
                PopupMenuItem(
                  child: Text("Linked Device"),
                ),
                PopupMenuItem(
                  child: Text("New Group"),
                ),
                PopupMenuItem(
                  child: Text("Stared Messages"),
                ),
              ];
            },
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
