import 'package:flutter/material.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  List image1 = [
    "https://img.mensxp.com/media/content/2022/Aug/Header-Image_BCCL_62e91b2d4c4a5.jpeg",
    "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202302/recall-salman-sixteen_nine.jpg?VersionId=4oxR2lC2aw.38ZfB98TSkzTEmMhtfULK&size=690:388",
    "https://static.toiimg.com/thumb/msid-96568333,imgsize-54512,width-800,height-600,resizemode-75/96568333.jpg",
    "https://images.indianexpress.com/2017/10/ram.jpg",
    "https://c.ndtvimg.com/2022-07/3mgo2dig_shruti-_625x300_05_July_22.jpg",
  ];
  List image2 = [
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
  ];
  List text1 = [
    "Today,",
    "Today,",
    "Today,",
    "Today,",
    "Today,",
  ];
  List text2 = [
    "Today,",
    "Today,",
    "Yesteray,",
    "Yesteray,",
    "Yesteray,",
  ];
  List name1 = [
    "Yash(Rocky Bhai)",
    "Ram Charan",
    "Prabhas",
    "Vicky",
    "Aishvarya Rai"
  ];
  List text = [
    "8:25 AM",
    "10:25 AM",
    "11:25 AM",
    "1:20 PM",
    "3:20 PM",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff008069),
          child: Icon(Icons.camera_alt),
          onPressed: () {}),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                height: 80,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://s3images.zee5.com/wp-content/uploads/2022/01/zayynuuumsdfs2022011512393420220115124425.jpg"),
                        ),
                        Positioned(
                          bottom: 1,
                          right: 1,
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 11,
                              backgroundColor: Color(0xff008069),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "My status",
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
                            "Tap to add status update",
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
              child: Text("Recent updateds",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade600)),
            ),
            SizedBox(
              height: 8,
            ),
            Column(
              children: List.generate(
                image1.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(image1[index]),
                        ),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 16,
                          ),
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
                              Text(
                                text1[index],
                                style: TextStyle(color: Colors.grey.shade600),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                text[index],
                                style: TextStyle(color: Colors.grey.shade600),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text("Viewed updateds",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade600)),
            ),
            SizedBox(
              height: 8,
            ),
            Column(
              children: List.generate(
                image2.length,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(image2[index]),
                        ),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            name1[index],
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                text2[index],
                                style: TextStyle(color: Colors.grey.shade600),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                text[index],
                                style: TextStyle(color: Colors.grey.shade600),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
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
