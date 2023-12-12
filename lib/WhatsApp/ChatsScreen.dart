import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
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

  List text = [
    "8:25 AM",
    "10:25 AM",
    "11:25 AM",
    "Yesterday",
    "Yesterday",
    "Yesterday",
    "Yesterday",
    "1/15/23",
    "1/20/23",
    "1/25/23",
  ];

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff008069),
          child: Icon(Icons.message),
          onPressed: () {}),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: List.generate(
                  image.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Container(
                      height: 75,
                      width: 360,
                      child: Row(
                        children: [
                          InkResponse(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    alignment: Alignment.topCenter,
                                    insetPadding: EdgeInsets.only(top: 100),
                                    child: Container(
                                      width: 180,
                                      height: 300,
                                      color: Colors.white,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: 250,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                    image[index],
                                                  ),
                                                  fit: BoxFit.cover),
                                            ),
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  height: 40,
                                                  color: Colors.black38,
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 10,
                                                        horizontal: 10),
                                                    child: Text(
                                                      name[index],
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(
                                                Icons.message,
                                                color: Color(0xff008069),
                                              ),
                                              Icon(
                                                Icons.call,
                                                color: Color(0xff008069),
                                              ),
                                              Icon(
                                                Icons.video_call,
                                                color: Color(0xff008069),
                                              ),
                                              Icon(
                                                Icons.help_outline_outlined,
                                                color: Color(0xff008069),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(image[index]),
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
                              Text(
                                "Good Morning",
                                style: TextStyle(color: Colors.grey.shade500),
                              )
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Text(
                              text[index],
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                          )
                        ],
                      ),
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
