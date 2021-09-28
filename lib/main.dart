import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage()
  )
);

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; // get total width and height of your device
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.red[600],
            leading: IconButton(onPressed: () {}, icon: Icon(
              Icons.menu,
              color: Colors.grey,
            ),
            ),
            title: Center(

                child: Container (
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                    child: TextField (
                      decoration: InputDecoration(
                        hintText: "Search",
                        icon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    )
                )
            ),
            actions: <Widget>[
              IconButton(onPressed: () {}, icon: Icon(Icons.message , color: Colors.grey)),
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications, color: Colors.grey)),
            ],

          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                margin: EdgeInsets.symmetric(horizontal: 70.0,vertical: 20.0),
                color: Colors.grey[600],
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Ink.image(image: NetworkImage("https://i.imgur.com/YpI7oQs.jpg"),
                          child: InkWell(
                            onTap: () {},
                          ),
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Họ tên : Trần Cao Dũng",
                            style: TextStyle(
                              color: Colors.white,
                            )
                        ),
                        SizedBox(height: 8),
                        Text(
                            "Email: @DungTran147",
                            style: TextStyle(
                              color: Colors.white,
                            )
                        ),
                        SizedBox(height: 8),
                        Text(
                            "Kinh nghiệm : 3 năm",
                            style: TextStyle(
                              color: Colors.white,
                            )
                        ),
                        SizedBox(height: 8),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,

                          children: [
                            Text('Đánh giá : 4.5/5',
                                style: TextStyle(
                                  color: Colors.white,
                                )

                            ),
                            Icon(Icons.star),

                          ],
                        ),
                        RaisedButton(onPressed: () {} , child: Text(
                            "Tìm hiểu"

                        ),
                          color: Colors.white,)
                      ],
                    )
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 70.0,vertical: 20.0),
                color: Colors.grey[600],
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Ink.image(image: NetworkImage("https://storage.googleapis.com/cmg-f8/4eb28968-66b1-11eb-a371-f2d04e0ae674/49a194c5-9a40-4907-91d2-dd7be2ec38a9-MAN_6376.jpg"),
                          child: InkWell(
                            onTap: () {},
                          ),
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Họ tên : Cao Mạnh Cường",
                            style: TextStyle(
                              color: Colors.white,
                            )
                        ),
                        SizedBox(height: 8),
                        Text(
                            "Email: @CuongCao147",
                            style: TextStyle(
                              color: Colors.white,
                            )
                        ),
                        SizedBox(height: 8),
                        Text(
                            "Kinh nghiệm : 4 năm",
                            style: TextStyle(
                              color: Colors.white,
                            )
                        ),
                        SizedBox(height: 8),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,

                          children: [
                            Text('Đánh giá : 4.8/5',
                                style: TextStyle(
                                  color: Colors.white,
                                )

                            ),
                            Icon(Icons.star),

                          ],
                        ),
                        RaisedButton(onPressed: () {} , child: Text(
                          "Tìm hiểu"

                        ),
                        color: Colors.white,)
                      ],
                    )
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 70.0,vertical: 20.0),
                color: Colors.grey[600],
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Ink.image(image: NetworkImage("https://storage.googleapis.com/cmg-f8/4eb28968-66b1-11eb-a371-f2d04e0ae674/b6de68bb-2984-4669-bd0c-05d263063be5-MAN_6552.jpg"),
                          child: InkWell(
                            onTap: () {},
                          ),
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Họ tên : Bùi Xuân Nam",
                            style: TextStyle(
                              color: Colors.white,
                            )
                        ),
                        SizedBox(height: 8),
                        Text(
                            "Email: @NamBui47",
                            style: TextStyle(
                              color: Colors.white,
                            )
                        ),
                        SizedBox(height: 8),
                        Text(
                            "Kinh nghiệm : 4 năm",
                            style: TextStyle(
                              color: Colors.white,
                            )
                        ),
                        SizedBox(height: 8),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,

                          children: [
                            Text('Đánh giá : 4.7/5',
                                style: TextStyle(
                                  color: Colors.white,
                                )

                            ),
                            Icon(Icons.star),

                          ],
                        ),
                        RaisedButton(onPressed: () {} , child: Text(
                            "Tìm hiểu"

                        ),
                          color: Colors.white,)
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
          ),

        bottomNavigationBar:

        BottomNavigationBar(
          backgroundColor: Colors.red[600],
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet),
                label: 'Wallet',
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chat',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Person',
                backgroundColor: Colors.blue,
              ),
            ]
        )

    );
  }
}

