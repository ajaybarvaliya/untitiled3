import 'package:flutter/material.dart';

import 'CallsScreen.dart';
import 'ChatsScreen.dart';
import 'SatatusScreen.dart';

class Wpappbar extends StatefulWidget {
  const Wpappbar({Key? key}) : super(key: key);

  @override
  State<Wpappbar> createState() => _WpappbarState();
}

class _WpappbarState extends State<Wpappbar>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff008069),
        title: Text(
          "WhatsApp",
          style: TextStyle(),
        ),
        actions: [
          Icon(
            Icons.camera_alt_outlined,
          ),
          SizedBox(
            width: 25,
          ),
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: 10,
          ),
          PopupMenuButton(
            constraints: BoxConstraints(maxWidth: 400),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("New group"),
                ),
                PopupMenuItem(
                  child: Text("New broadcast"),
                ),
                PopupMenuItem(
                  child: Text("Linked devices"),
                ),
                PopupMenuItem(
                  child: Text("Starred messges"),
                ),
                PopupMenuItem(
                  child: Text("Payments"),
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                ),
              ];
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: TabBar(
            controller: tabController,
            labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            labelPadding: EdgeInsets.symmetric(vertical: 5),
            // indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,

            unselectedLabelColor: Colors.grey.shade300,
            tabs: [
              Tab(child: Icon(Icons.groups, size: 25)),
              Text("Chats"),
              Text("Status"),
              Text("Calls"),
            ],
          ),
        ),
      ),
      body: TabBarView(
        physics: BouncingScrollPhysics(),
        children: [
          Center(
            child: Text("group screen"),
          ),
          ChatsScreen(),
          StatusScreen(),
          CallsScreen()
        ],
        controller: tabController,
      ),
    );
  }
}
