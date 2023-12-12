import 'package:flutter/material.dart';

class AppBarDemo extends StatefulWidget {
  const AppBarDemo({Key? key}) : super(key: key);

  @override
  State<AppBarDemo> createState() => _AppBarDemoState();
}

class _AppBarDemoState extends State<AppBarDemo>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  void initState() {
    tabController = TabController(length: 3, vsync: this);
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
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(10),
        // ),
        // foregroundColor: Colors.yellow,
        // shadowColor: Colors.yellow,
        elevation: 10,
        toolbarHeight: 80,
        toolbarOpacity: 0.5,
        leadingWidth: 50,
        titleSpacing: 20,
        backgroundColor: Colors.blueGrey.shade800,
        // centerTitle: true,
        title: Text("WhatsApp"),
        actions: [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 20),
          Icon(Icons.search),
          SizedBox(width: 10),
          PopupMenuButton(
            padding: EdgeInsets.symmetric(horizontal: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            enableFeedback: true,
            position: PopupMenuPosition.over,
            color: Colors.blueGrey.shade900,
            offset: Offset(2, 2),
            // icon: Icon(Icons.menu),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text(
                    "New Group",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    "New Broadcast",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    "Linked Devices",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    "Starred Massage",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    "Payments",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    "Setting",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ];
            },
          ),
          SizedBox(width: 10),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: TabBar(
            labelPadding: EdgeInsets.symmetric(vertical: 10),
            indicatorColor: Colors.white,
            controller: tabController,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
            indicatorWeight: 2,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontSize: 20),
            unselectedLabelStyle: TextStyle(fontSize: 25),
            // indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Text("Chat"),
              Text("Status"),
              Text("Calls"),
            ],
          ),
        ),
      ),
      body: TabBarView(
        children: [
          Center(
            child: Text("Chat Screen"),
          ),
          Center(
            child: Text("Status Screen"),
          ),
          Center(
            child: Text("Calls Screen"),
          ),
        ],
        controller: tabController,
      ),
    );
  }
}
