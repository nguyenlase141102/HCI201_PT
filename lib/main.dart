import 'package:flutter/material.dart';
import 'package:project2/pages/home.dart';
import 'package:project2/pages/navbar.dart';
import 'package:project2/pages/phonebook.dart';
import 'package:project2/pages/schedule.dart';
import 'package:project2/pages/settings.dart';
import 'package:project2/views/profile_page.dart';

/*void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage()
  )
);*/
void main() {
  runApp( HomePage());
}
class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePageApp(),
    );
  }
}

class HomePageApp extends StatefulWidget {
  const HomePageApp({ Key? key }) : super(key: key);

  @override
  _HomePageAppState createState() => _HomePageAppState();
}

class _HomePageAppState extends State<HomePageApp> {
  int _currentIndex = 0;
  final List pages = [
    HomePageLocal(),
    HomeCalendarPage(),
    PhoneBook(),
    Settings(),
  ];
  
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: NavBar(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.red[600],
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
        body: pages[_currentIndex],

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
                label: 'Schedule',
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chat',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Colors.blue,
              ),
            ],
            onTap: (index){
              setState(() {
              _currentIndex=index;
              });
            },
        )

    );
  }
}



/*class HomePage extends StatelessWidget {


  int _currentIndex = 0;
  final List pages = [
    HomePage(),
    null,
    PhoneBook(),
    Settings(),
  ];


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; // get total width and height of your device
    return Scaffold(
        backgroundColor: Colors.grey,
        drawer: NavBar(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.red[600],
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
        body: HomePageLocal(),

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
            ],
            onTap: (index){
              setState(() {
              _currentIndex=index;
              });
            },
        )

    );
  }
}

class screen2 extends StatelessWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello anh em"
        ),
      ),
      body: Center(
        child: Text(
          "Screen 2"
        ),
      ),
    );
  }
}*/


