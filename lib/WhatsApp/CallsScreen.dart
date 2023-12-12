import 'package:flutter/material.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  List image = [
    "https://img.mensxp.com/media/content/2022/Aug/Header-Image_BCCL_62e91b2d4c4a5.jpeg",
    "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202302/recall-salman-sixteen_nine.jpg?VersionId=4oxR2lC2aw.38ZfB98TSkzTEmMhtfULK&size=690:388",
    "https://static.toiimg.com/thumb/msid-96568333,imgsize-54512,width-800,height-600,resizemode-75/96568333.jpg",
    "https://images.indianexpress.com/2017/10/ram.jpg",
    "https://c.ndtvimg.com/2022-07/3mgo2dig_shruti-_625x300_05_July_22.jpg",
    "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202301/kgf-sixteen_nine.jpg?VersionId=sURMdacSus0VQw7ZMQFekMM7CpUdeqqa",
    "https://cdn.gulte.com/wp-content/uploads/2022/06/Ram-Charan-1.jpg",
    "https://www.pinkvilla.com/imageresize/Baahubali%20star%20Prabhas%E2%80%99%20UNSEEN%20pictures;%20Take%20a%20look%20at%20how%20this%20handsome%20hunk%20has%20transformed%20over%20the%20years%20(1).jpg?width=752&t=pvorg",
    "https://images.hindustantimes.com/img/2021/12/08/550x309/4614293a-5775-11ec-ba48-cf98c20b89f1_1638944726659.jpg",
    "https://m.economictimes.com/thumb/msid-92695678,width-1200,height-900,resizemode-4,imgsize-171580/aishwarya-rai-bachchan.jpg",
  ];
  List name = [
    "S.R.K",
    "Salman khan",
    "Anupama",
    "Ram",
    "Shruti",
    "Yash(Rocky Bhai)",
    "Ram Charan",
    "Prabhas",
    "Vicky",
    "Aishvarya Rai"
  ];
  List call = [
    Icons.call_received,
    Icons.call_made,
    Icons.call_received,
    Icons.call_made,
    Icons.call_made,
    Icons.call_received,
    Icons.call_made,
    Icons.call_made,
    Icons.call_made,
    Icons.call_received,
  ];
  List color = [
    Colors.red,
    Colors.red,
    Colors.green,
    Colors.red,
    Colors.green,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.red,
    Colors.green,
  ];

  List text = [
    "Today,",
    "Today,",
    "Yesteray,",
    "Yesteray,",
    "Yesteray,",
    "15February,",
    "23February,",
    "1/25/23,",
    "1/28/22,",
    "1/15/22,",
  ];
  List text1 = [
    "8:25 AM",
    "10:25 AM",
    "11:25 AM",
    "1:20 PM",
    "3:20 PM",
    "6:20 PM",
    "10:20 PM",
    "3:30 PM",
    "12:20 PM",
    "3:20 AM",
  ];
  List iconcall = [
    Icons.call,
    Icons.call,
    Icons.video_call,
    Icons.call,
    Icons.video_call,
    Icons.call,
    Icons.call,
    Icons.call,
    Icons.call,
    Icons.video_call,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff008069),
        child: Icon(Icons.add_call, color: Colors.white),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              child: Container(
                height: 80,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color(0xff008069),
                      child:
                          Icon(Icons.link_sharp, color: Colors.white, size: 28),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Create call link",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Colors.grey.shade900,
                                letterSpacing: 0.3),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Share a link for your WhatsApp call",
                            style: TextStyle(color: Colors.grey.shade700),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text("Recent",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600)),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Column(
                children: List.generate(
                  10,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(image[index]),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  call[index],
                                  size: 16,
                                  color: color[index],
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  text[index],
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  text1[index],
                                  style: TextStyle(color: Colors.grey.shade500),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          iconcall[index],
                          color: Color(0xff008069),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 0.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  color: Colors.grey,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Your personal calls are",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  "end-to-end encrypted",
                  style: TextStyle(
                    color: Color(0xff008069),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}
