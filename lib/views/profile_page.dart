import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/ptpic1.jpg"),
                  fit: BoxFit.cover,
                )),
                child: Container(
                  width: double.infinity,
                  height: 350.0,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage("assets/ptpic2.jpg"),
                        ),
                        Text(
                          "Duc Dang",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                        Text(
                          "@ducdang",
                          style: TextStyle(fontSize: 20, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                        size: 20,
                      ),
                      const Text('(4)'),
                    ],
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    "Theo dõi",
                    style:
                        TextStyle(color: Colors.greenAccent.shade400, fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Kinh nghiệm
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Kinh nghiệm",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              "57 Năm",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      //Theo dõi
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Theo dõi",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              "75902",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),

                      // Ngôn ngữ
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Lịch tập",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              "Còn trống",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600, color: Colors.green),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Chip(
                        label: const Text('ImproveGeneralHealth'),
                      ),
                      Chip(
                        label: const Text('WeightGain'),
                      )
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.grey,
                        size: 30,
                      ),
                      Text("Biography",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w700)),
                      RaisedButton(onPressed: () {
                              Navigator.push(context , MaterialPageRoute(builder: (context) => ProfilePage()));
                            } , child: Text(
                                "Booking"

                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Text(
                  "Lifestyle. Energy. Results. Train like an Athlete! Expert on Weight Lifting & CrossFit, Strong on Core Training & Nutritionist. Health!",
                  style: TextStyle(fontSize: 20),
                )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
